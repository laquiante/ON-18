clear
echo
echo "********************************* description ********************************************************"
echo "*                                                                                                    *"
echo "*            Welcome to our Cumulus Linux Professional Bootcamp / Workshop                           *"
echo "*                                                                                                    *"
echo "*                  ALQ & the Rocket Trutles, Hamburg 2023                                            *"
echo "*                                                                                                    *"
echo "*            Menue consolidating multiple classes/offerings/workshops                                *"
echo "*                                                                                                    *"
echo "*                                3 day professional bootcamp (MVP)                                   *"
echo "*                                intentionally written without roles, tasks and jinja templates      *"
echo "*                                                                                                    *"
echo "*                                next steps:                                                         *"
echo "*                                                                                                    *"
echo "*                                5 day XL professional bootcamp                                      *"
echo "*                                custom workshop                                                     *"
echo "*                                NVUE API workshop                                                   *"
echo "*                                HPC monitoring workhsop                                             *"
echo "*                                Automation workshop                                                 *"
echo "*                                                                                                    *"
echo "************************************* end ************************************************************"
echo
echo 
PS3='Please enter your choice: '
options=("Cleanup" "Practice-01" "Practice-02" "Practice-03" "Practice-04" "Practice-04 New" "Practice-05" "Practice-06" "Practice-07" "Practice-08" "5th day TS L2" "5th day TS L3" "5th day TS EVPN" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Cleanup")
            echo "cleaning up the environment"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/.cleanup/main.yaml
            break
            ;;
        "Practice-01")
            echo "Practice-01"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-01/main.yaml
            break
            ;;
        "Practice-02")
            echo "Practice-02"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-02/main.yaml
            break
            ;;
        "Practice-03")
            echo "Practice-03"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-03/main.yaml
            break
            ;;
        "Practice-04")
            echo "Practice-04"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-04/main.yaml
            break
            ;;
         "Practice-04 New")
            echo "Practice-04"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-04/mainN.yaml
            break
            ;;
        "Practice-05")
            echo "Practice-05"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-05/main.yaml
            break
            ;;
        "Practice-06")
            echo "Practice-06"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-06/main.yaml
            break
            ;;
        "Practice-07")
            echo "Practice-07"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-07/main.yaml
            break
            ;;
        "Practice-08")
            echo "Practice-08"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/practice-08/main.yaml
            break
            ;;               
        "5th day TS L2")
            echo "5th day TS L2"
            sudo ansible-playbook -i /home/cumulus/ON-18/inventory/files/hosts /home/cumulus/ON-18/labs/troubleshooting-L2-LLDP/main.yaml
            break
            ;;
        "5th day TS L3")
            echo "5th day TS L3"
            break
            ;;
        "5th day TS EVPN")
            echo "5th day TS L2"
            break
            ;;   
         "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
