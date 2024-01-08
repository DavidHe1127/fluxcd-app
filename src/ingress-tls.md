apiVersion: secrets-store.csi.x-k8s.io/v1
kind: SecretProviderClass
metadata:
  name: nginx-ingress-tls
  namespace: main
spec:
  provider: azure
  secretObjects:
    - secretName: ingress-tls-csi
      type: kubernetes.io/tls
      data:
        - objectName: dave-aks-lab-tls
          key: tls.key
        - objectName: dave-aks-lab-tls
          key: tls.crt
  parameters:
    usePodIdentity: "false"
    useVMManagedIdentity: "true"
    userAssignedIdentityID: e7c91576-c049-4690-8c9d-e03006c64261
    keyvaultName: dave-aks-lab-kv
    objects: |
      array:
        - |
          objectName: dave-aks-lab-tls
          objectType: secret
    tenantId: 513294a0-3e20-41b2-a970-6d30bf1546fa
