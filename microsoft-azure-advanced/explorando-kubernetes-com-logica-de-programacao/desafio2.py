# Recebe a entrada do usuário
input_string = input()

def kubectl_command(input_string):
    # Separa a entrada em ação e nome do volume ou claim
    action, resource_name = input_string.split(", ")
    
    # COMPLETE AQUI: Mapeie ações para comandos kubectl correspondentes
    actions_to_commands = {
        "criar-pv": "kubectl create -f",
        "deletar-pv": "kubectl delete pv",
        "criar-pvc": "kubectl create -f",
        "deletar-pvc": "kubectl delete pvc"
    }
    
    # Verifica se a ação está mapeada e retorna o comando correspondente
    if action in actions_to_commands:
        return f"{actions_to_commands[action]} {resource_name}"

# Gera e exibe o comando kubectl correspondente
print(kubectl_command(input_string))

