# Hydra

## Description
Hydra malware is based on the greek mythological serpent-like monster with the same name. It which has multiple heads and if one head is cut off, two more grow back. The Hydra malware works on the same principle, if you terminate one process of Hydra two more will be created. The only way to kill all Hydra processes is to run the taskkill command in CMD with admin privileges. In addition to not being able to close Hydra in a traditional way Hydra also functions as a rabbit eating up CPU resources, it also recursively tries to delete all files on all drives and once it's done deleting it tries to copy itself to these drives. 

## How Hydra Does It
Each Hydra process keeps track of the number of Hydra processes there are when it was started when the number of Hydra processes drops below this number it starts two more Hydra processes. The CPU rabbit works simply by spawning a thread every 10 seconds and trying to calculate prime numbers. These new threads also do the recursive deleting of all files and copying the virus to any connected drives.

## Threat
Hydra’s biggest threat is the deletion of any files it is allowed to delete on any connected storage device. It does this by calling a recursive delete function on all drive letters (‘C:', ‘D:’, ‘E:’ ...).

## Propagation
Hydra propagates by trying to copy itself to all attached drives by trying to copy Hydra to all drive letters (‘C:’, ‘D:’, ‘E:’ ...). 
