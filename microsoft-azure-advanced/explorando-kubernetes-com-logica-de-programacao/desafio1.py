# Recebe a entrada do usuário
input_string = input()

def kubectl_command(input_string):
    # COMPLETE AQUI: Mapeie ações para comandos kubectl correspondentes
    actions_to_commands = {
        "descrever": "kubectl describe pods",
        "deletar": "kubectl delete pods --all",
        "explicar": "kubectl explain pods",
        "listar": "kubectl get pods"
    }
    
    # Verifica se a ação está mapeada e retorna o comando correspondente
    if input_string in actions_to_commands:
        return actions_to_commands[input_string]

# Gera e exibe o comando kubectl correspondente
print(kubectl_command(input_string))

