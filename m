Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81A9ABB347
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 14:04:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730225AbfIWMEX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 08:04:23 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:34329 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729725AbfIWMEW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 08:04:22 -0400
Received: by mail-wm1-f65.google.com with SMTP id y135so14855901wmc.1;
        Mon, 23 Sep 2019 05:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=F/PZjt1nm8LbQbD7wRvopLiR4xCrc4cjT659+MAv4GA=;
        b=JCajP4vVUiUD7pJNg4ZHuXpobnACQrzO/VyyXurCq86cWJsXErYH7I011AdFseJwxQ
         gE0UoL9oVahgbqO5vST6YwnbHpnVsLsdsU+M49Ci829ZeuyEaaGAHXdiWPyxQNoRYxZg
         RQTF/1pWrLUUe4VH7x9VftoLTq2GUopQ/Hjg5DjqgEJElyuW5Kocph78JREk/vdmHhCu
         GGbbEGVtLFt+tHg4PTbYCQAAQcIOKMD7jteCNWWjk/okqXEAeJ/UaTH7ogAJYDHbWnTF
         4VP2gLsFNMYWaq8ErqvStQIKTLyLdNA1cn4L+AJzXoa57ieb8NpE4KQJEBaMjs13lURZ
         G/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=F/PZjt1nm8LbQbD7wRvopLiR4xCrc4cjT659+MAv4GA=;
        b=j3aNiBfzwDjBwyQZB18cWdkTkFEn5H8vNrDuc9ON/xFN3x0OEGkl7SmhrTKNVsBmNG
         ZYWyTqq0R465+HX8DwaOPzhbBdr2nrJxRtLvPg470bVLE8EQVHnKwyFNt+f8sozC/tCX
         u0Vm3dMb7ZCjFxCIJs/qg/k+M6U7ecXirA2KzCnlDoYhiwTaFvQA/9CcVq1SwgIBSaJJ
         KvexXDshU/E/ufZPdvbC3Xdu4WlO03+zM0SP7qZ9pDLUcaiuYvwinFPyNbF96Q3UTU5j
         PUYuckLhrtG2bIucGg1/GseRGiUoEPNzNPtmBSHcSRBsom/auH6/eUzCtJaGeZH6nI19
         iMDA==
X-Gm-Message-State: APjAAAVWxA1JT1zryIleVnoELKCIX04aOuuoP+sDdmoIUiNJj8KReI1y
        Pp/6Ov1Wv7MlRmUfkLMFwCY=
X-Google-Smtp-Source: APXvYqy61TG+7YU1jeOWsKl1P+kiyQgGNJCrM/l+6rzAW4CQlGZF4bIAl+UPkKPpJfI6Q8bDeak9Dw==
X-Received: by 2002:a1c:3946:: with SMTP id g67mr14384193wma.52.1569240258505;
        Mon, 23 Sep 2019 05:04:18 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id e18sm10373321wrv.63.2019.09.23.05.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 05:04:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        =?UTF-8?Q?St=c3=a9phane_Graber?= <stgraber@ubuntu.com>
To:     "Eric W. Biederman" <ebiederm@xmission.com>,
        "Serge E. Hallyn" <serge@hallyn.com>,
        Christian Brauner <christian@brauner.io>,
        Aleksa Sarai <asarai@suse.de>,
        Reid Priedhorsky <reidpr@lanl.gov>,
        Andy Lutomirski <luto@amacapital.net>,
        Yang Bo <rslovers@yandex.com>, Jakub Wilk <jwilk@jwilk.net>,
        Joseph Sible <josephcsible@gmail.com>,
        Al Viro <viro@ftp.linux.org.uk>,
        Philipp Wendler <ml@philippwendler.de>, werner@almesberger.net
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: For review: rewritten pivot_root(2) manual page
Message-ID: <620c691a-065e-b894-4f06-7453012bc8d3@gmail.com>
Date:   Mon, 23 Sep 2019 14:04:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello all,

I'm looking for review input for the pivot_root(2) manual
page, which I have substantially rewritten.

The original page was written 19 years ago, and has seen
little revision since that time. It contains a number of
errors. Even at the time it was first released, the 
manual page already had some inaccuracies, since it was
written before the final release of the system call, whose
implementation was subsequently changed, but the manual
page was not updated to reflect those changes.

The revised page is more than 2.5 times the size of the
previous page, and now includes an example program.
As well as fixing a number of errors and adding many
missing details, the page also adds a description of the
pivot_root(".", ".") technique.

I would be happy to receive error corrections and notes
on missing details that should be added to the page.

The rendered page is shown below. The page source can
be found in the Git repo at
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git

One area of the page that I'm still not really happy with
is the "vague" wording in the second paragraph and the note
in the third paragraph about the system call possibly
changing. These pieces survive (in somewhat modified form)
from the original page, which was written before the
system call was released, and it seems there was some
question about whether the system call might still change
its behavior with respect to the root directory and current
working directory of other processes. However, after 19
years, nothing has changed, and surely it will not in the
future, since that would constitute an ABI breakage.
I'm considering to rewrite these pieces to exactly
describe what the system call does (which I already
do in the third paragraph) and remove the "may or may not"
pieces in the second paragraph. I'd welcome comments
on making that change.

The rendered page is shown below. The page source is at
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man2/pivot_root.2
in the Git repo at
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git

Thanks,

Michael

NAME
       pivot_root - change the root filesystem

SYNOPSIS
       int pivot_root(const char *new_root, const char *put_old);

       Note: There is no glibc wrapper for this system call; see NOTES.

DESCRIPTION
       pivot_root() changes the root filesystem in the mount namespace of
       the calling process.  More precisely, it moves the root filesystem
       to  the directory put_old and makes new_root the new root filesys‐
       tem.  The calling process must have the  CAP_SYS_ADMIN  capability
       in the user namespace that owns the caller's mount namespace.

       pivot_root()  may  or may not change the current root and the cur‐
       rent working directory of any processes or threads  that  use  the
       old  root  directory  and which are in the same mount namespace as
       the caller of pivot_root().  The  caller  of  pivot_root()  should
       ensure  that  processes  with root or current working directory at
       the old root operate correctly in either case.   An  easy  way  to
       ensure  this is to change their root and current working directory
       to  new_root  before  invoking  pivot_root().   Note   also   that
       pivot_root()  may  or may not affect the calling process's current
       working directory.  It is therefore recommended to call chdir("/")
       immediately after pivot_root().

       The  paragraph  above  is  intentionally vague because at the time
       when pivot_root() was first implemented, it  was  unclear  whether
       its  affect  on  other process's root and current working directo‐
       ries—and the caller's current working  directory—might  change  in
       the  future.   However, the behavior has remained consistent since
       this system call was first implemented: pivot_root()  changes  the
       root  directory  and the current working directory of each process
       or thread in the same mount namespace to new_root if they point to
       the  old  root  directory.   (See also NOTES.)  On the other hand,
       pivot_root() does not change the caller's current  working  direc‐
       tory  (unless it is on the old root directory), and thus it should
       be followed by a chdir("/") call.

       The following restrictions apply:

       -  new_root and put_old must be directories.

       -  new_root and put_old must not be on the same filesystem as  the
          current root.  In particular, new_root can't be "/" (but can be
          a bind mounted directory on the current root filesystem).

       -  put_old must be at or underneath new_root; that  is,  adding  a
          nonnegative  number  of /.. to the string pointed to by put_old
          must yield the same directory as new_root.

       -  new_root must be a mount point.  (If  it  is  not  otherwise  a
          mount  point,  it  suffices  to  bind  mount new_root on top of
          itself.)

       -  The propagation type of the parent mount of  new_root  and  the
          parent  mount  of  the  current  root  directory  must  not  be
          MS_SHARED; similarly, if put_old is an  existing  mount  point,
          its propagation type must not be MS_SHARED.  These restrictions
          ensure  that  pivot_root()  never  propagates  any  changes  to
          another mount namespace.

       -  The current root directory must be a mount point.

RETURN VALUE
       On success, zero is returned.  On error, -1 is returned, and errno
       is set appropriately.

ERRORS
       pivot_root() may fail with any of  the  same  errors  as  stat(2).
       Additionally, it may fail with the following errors:

       EBUSY  new_root  or  put_old  is  on  the current root filesystem.
              (This error covers the pathological case where new_root  is
              "/".)

       EINVAL new_root is not a mount point.

       EINVAL put_old is not underneath new_root.

       EINVAL The current root directory is not a mount point (because of
              an earlier chroot(2)).

       EINVAL The current root is on the rootfs (initial ramfs)  filesys‐
              tem; see NOTES.

       EINVAL Either  the mount point at new_root, or the parent mount of
              that mount point, has propagation type MS_SHARED.

       EINVAL put_old is a mount  point  and  has  the  propagation  type
              MS_SHARED.

       ENOTDIR
              new_root or put_old is not a directory.

       EPERM  The  calling  process does not have the CAP_SYS_ADMIN capa‐
              bility.

VERSIONS
       pivot_root() was introduced in Linux 2.3.41.

CONFORMING TO
       pivot_root() is Linux-specific and hence is not portable.

NOTES
       Glibc does not provide a wrapper for this  system  call;  call  it
       using syscall(2).

       A  command-line  interface  for  this  system  call is provided by
       pivot_root(8).

       pivot_root() allows the caller to switch to a new root  filesystem
       while  at  the  same time placing the old root mount at a location
       under new_root from where it can subsequently be unmounted.   (The
       fact  that  it  moves  all processes that have a root directory or
       current working directory on the old root filesystem  to  the  new
       root  filesystem  frees the old root filesystem of users, allowing
       it to be unmounted more easily.)

       A typical use of pivot_root() is during system startup,  when  the
       system  mounts a temporary root filesystem (e.g., an initrd), then
       mounts the real root filesystem, and eventually turns  the  latter
       into  the  current  root  of all relevant processes or threads.  A
       modern use is to set up a root filesystem during the creation of a
       container.

       The fact that pivot_root() modifies process root and current work‐
       ing directories in the manner noted in DESCRIPTION is necessary in
       order  to  prevent kernel threads from keeping the old root direc‐
       tory busy with their root and current working directory,  even  if
       they never access the filesystem in any way.

       new_root  and  put_old  may be the same directory.  In particular,
       the following sequence allows a pivot-root operation without need‐
       ing to create and remove a temporary directory:

           chdir(new_root);
           mount("", ".", MS_SLAVE | MS_REC, NULL);
                   /* Or: MS_PRIVATE | MS_REC */
           pivot_root(".", ".");
           umount2(".", MNT_DETACH);

       This  sequence  succeeds  because the pivot_root() call stacks the
       old root mount point (old_root) on top of the new root mount point
       at  /.   At  that  point, the calling process's root directory and
       current working directory  refer  to  the  new  root  mount  point
       (new_root).   During  the  subsequent umount() call, resolution of
       "."  starts with new_root and then moves up  the  list  of  mounts
       stacked at /, with the result that old_root is unmounted.

       The  rootfs  (initial ramfs) cannot be pivot_root()ed.  The recom‐
       mended method of changing the root filesystem in this case  is  to
       delete  everything  in rootfs, overmount rootfs with the new root,
       attach stdin/stdout/stderr to the new /dev/console, and  exec  the
       new   init(1).   Helper  programs  for  this  process  exist;  see
       switch_root(8).

EXAMPLE
       The program below demonstrates the use of  pivot_root()  inside  a
       mount namespace that is created using clone(2).  After pivoting to
       the root directory named in the program's first command-line argu‐
       ment,  the  child  created  by  clone(2) then executes the program
       named in the remaining command-line arguments.

       We demonstrate the program by creating a directory that will serve
       as  the  new root filesystem and placing a copy of the (statically
       linked) busybox(1) executable in that directory.

           $ mkdir /tmp/rootfs
           $ ls -id /tmp/rootfs    # Show inode number of new root directory
           319459 /tmp/rootfs
           $ cp $(which busybox) /tmp/rootfs
           $ PS1='bbsh$ ' sudo ./pivot_root_demo /tmp/rootfs /busybox sh
           bbsh$ PATH=/
           bbsh$ busybox ln busybox ln
           bbsh$ ln busybox echo
           bbsh$ ln busybox ls
           bbsh$ ls
           busybox  echo     ln       ls
           bbsh$ ls -id /          # Compare with inode number above
           319459 /
           bbsh$ echo 'hello world'
           hello world

   Program source

       /* pivot_root_demo.c */

       #define _GNU_SOURCE
       #include <sched.h>
       #include <stdio.h>
       #include <stdlib.h>
       #include <unistd.h>
       #include <sys/wait.h>
       #include <sys/syscall.h>
       #include <sys/mount.h>
       #include <sys/stat.h>
       #include <limits.h>

       #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                               } while (0)

       static int
       pivot_root(const char *new_root, const char *put_old)
       {
           return syscall(SYS_pivot_root, new_root, put_old);
       }

       #define STACK_SIZE (1024 * 1024)

       static int              /* Startup function for cloned child */
       child(void *arg)
       {
           char **args = arg;
           char *new_root = args[0];
           const char *put_old = "/oldrootfs";
           char path[PATH_MAX];

           /* Ensure that 'new_root' and its parent mount don't have
              shared propagation (which would cause pivot_root() to
              return an error), and prevent propagation of mount
              events to the initial mount namespace */

           if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
               errExit("mount-MS_PRIVATE");

           /* Ensure that 'new_root' is a mount point */

           if (mount(new_root, new_root, NULL, MS_BIND, NULL) == -1)
               errExit("mount-MS_BIND");

           /* Create directory to which old root will be pivoted */

           snprintf(path, sizeof(path), "%s/%s", new_root, put_old);
           if (mkdir(path, 0777) == -1)
               errExit("mkdir");

           /* And pivot the root filesystem */

           if (pivot_root(new_root, path) == -1)
               errExit("pivot_root");

           /* Switch the current working working directory to "/" */

           if (chdir("/") == -1)
               errExit("chdir");

           /* Unmount old root and remove mount point */

           if (umount2(put_old, MNT_DETACH) == -1)
               perror("umount2");
           if (rmdir(put_old) == -1)
               perror("rmdir");

           /* Execute the command specified in argv[1]... */

           execv(args[1], &args[1]);
           errExit("execv");
       }

       int
       main(int argc, char *argv[])
       {
           /* Create a child process in a new mount namespace */

           char *stack = malloc(STACK_SIZE);
           if (stack == NULL)
               errExit("malloc");

           if (clone(child, stack + STACK_SIZE,
                       CLONE_NEWNS | SIGCHLD, &argv[1]) == -1)
               errExit("clone");

           /* Parent falls through to here; wait for child */

           if (wait(NULL) == -1)
               errExit("wait");

           exit(EXIT_SUCCESS);
       }

SEE ALSO
       chdir(2), chroot(2), mount(2),  stat(2),  initrd(4),  mount_names‐
       paces(7), pivot_root(8), switch_root(8)


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
