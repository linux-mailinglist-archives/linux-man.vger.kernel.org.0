Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 085332903FF
	for <lists+linux-man@lfdr.de>; Fri, 16 Oct 2020 13:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406175AbgJPL3X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Oct 2020 07:29:23 -0400
Received: from mout.gmx.net ([212.227.17.21]:47013 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2406103AbgJPL3W (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 16 Oct 2020 07:29:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1602847752;
        bh=aNvO9QmMchhjbGXA1Nf7sUn7ssXnf0WpH92FV2QmuIU=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=Elk3qkMdAPo0VcYO6xGJjKNqfOmQoCJhR0dAFtlutUM+gljyxj9psIsccj3GeVuN/
         aAU97yB7qy+tQ+WRGRxBw/Cs82VhKt5nkp2HEMbLkmlu0hxYfEkkxBBoMV3xt2d9sF
         jDiYUKI+fsWOdFGIacXjnsstfph/1rhF4D30PFoU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from workstation4.fritz.box ([178.202.41.107]) by mail.gmx.com
 (mrgmx105 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1M8QWG-1kXnlv3VuS-004WmX; Fri, 16 Oct 2020 13:29:11 +0200
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Matthew Garrett <mjg59@google.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        David Howells <dhowells@redhat.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH 1/1] kernel_lockdown.7: new file
Date:   Fri, 16 Oct 2020 13:28:34 +0200
Message-Id: <20201016112834.12530-1-xypron.glpk@gmx.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <7b9485d9-e286-a61e-63b6-15459dfc1f17@gmail.com>
References: <7b9485d9-e286-a61e-63b6-15459dfc1f17@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:qBOwoGPeEwEkmFhp3OUHDMyqRT8ud8asTyunFO2fohmfbUd5TXu
 pjWbApUl4dZtrhXjhEWZNQiNBipwPZvNxLAfXsATt6kK9H9GO+XitHvAuPnyuGdD32IGCs0
 SLGyaFGysJIZPAmeSd+5Z6n3akTRyYb+xCN3Wt95moH5AsR0HPW+A1HzCrBT9AN0GJjXxVD
 4H1LGsAY581M2DlvcuukQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Tx42I92omO4=:1mrg3kD/Ou8GjBPkZOwcDI
 vcDgHNsIrgzm4VzqvzXIUNkSjSv0cZQC0BjJ4y7t8r+RaLSfI6XpAQ7SAMK6L2pEb+tpqp7IM
 KeQAzmBrjfRneoW1X5/9udwQ0p4UpIn5d7x0NRheU3ngp1xac7iE0ZqZ17PwVk6uv6KNAtBqn
 5KWIAecdDYQ6kHsW4P+z7o7cMOKp2jCLGITwAS0ywGIXegd2ZlygKfb+im+WEKgqKwmMI23CC
 tQ3D4soz0wqv7iO7RQqbp7nkOY8gqlu+bgeBRMI6S0ifJdR4+z+1vC051qWZHFUPMxhVScOvi
 iNsw5DtXybu5rhP04blUEUpnjHoAWAqH9xMpr1+aKX6EO2AdU1HtkAmWrdZKDIMhzqjRczW82
 h3vgnNCbzr06DWHgSgxdTJOqs6BW/tIjllM90JhBgzhERo+L2j9gW+Bu+M50ShJGhUlZM173B
 p8kZbyGIJM/FW5y9ENZbHEf33FLQUgfhxMOeMRd++Bdg4XlcG4quNjYtrkryalUcNYB81Dxrk
 WRZAxMTHt1wZLfIW/PerSTLoM3B2Hzuxdn/iDAbD2Wt4BwZ0YVDW9bHn28ifcbHCxR1ACXwug
 JWnd1ZYCR4J6bC2N4p5XE6lkFRt4Xl9TF4pjBwZ463I8lsXQXZQ56saGs/uk6muRuETt/sWK+
 Hzd7arp/X4RfIZDLSFYrZE5jGk9w1M9unAS0ZqW+SimMCJhOBPHUIbfU+kHYY5fLqqsc7aZ3u
 6sSiuV2r4QpLPX7aK+XvOOumLfhpqhLSpszzdUlRJs5wuq6Jao17N44MXeJLr9CMSLjYQieMi
 L0Q0T6Awg1u1gUr6uvTUkK//QXFuTaBolQ72CNxYzNSivGXZhjppN1u19etKVs3eEjuzgP2Cr
 HKTssUReDDtdbaSxGI5Q==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Provide a man-page for kernel_lockdown. The content is taken from a patch
for the Fedora 34 man-pages available at

https://kojipkgs.fedoraproject.org//packages/man-pages/5.08/1.fc34/src/man=
-pages-5.08-1.fc34.src.rpm

Signed-off-by: David Howells <dhowells@redhat.com>
Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
=2D--
 man7/kernel_lockdown.7 | 107 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 107 insertions(+)
 create mode 100644 man7/kernel_lockdown.7

diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
new file mode 100644
index 000000000..5ec4289be
=2D-- /dev/null
+++ b/man7/kernel_lockdown.7
@@ -0,0 +1,107 @@
+.\"
+.\" Copyright (C) 2017 Red Hat, Inc. All Rights Reserved.
+.\" Written by David Howells (dhowells@redhat.com)
+.\"
+.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
+.\" This program is free software; you can redistribute it and/or
+.\" modify it under the terms of the GNU General Public License
+.\" as published by the Free Software Foundation; either version
+.\" 2 of the License, or (at your option) any later version.
+.\" %%%LICENSE_END
+.\"
+.TH "KERNEL LOCKDOWN" 7 2017-10-05 Linux "Linux Programmer's Manual"
+.SH NAME
+Kernel Lockdown \- Kernel image access prevention feature
+.SH DESCRIPTION
+The Kernel Lockdown feature is designed to prevent both direct and indire=
ct
+access to a running kernel image, attempting to protect against unauthori=
sed
+modification of the kernel image and to prevent access to security and
+cryptographic data located in kernel memory, whilst still permitting driv=
er
+modules to be loaded.
+.P
+Lockdown is typically enabled during boot and may be terminated, if confi=
gured,
+by typing a special key combination on a directly attached physical keybo=
ard.
+.P
+If a prohibited or restricted feature is accessed or used, the kernel wil=
l emit
+a message that looks like:
+.P
+.RS
+ Lockdown: X: Y is restricted, see man kernel_lockdown.7
+.RE
+.P
+where X indicates the process name and Y indicates what is restricted.
+.P
+On an EFI-enabled x86 or arm64 machine, lockdown will be automatically en=
abled
+if the system boots in EFI Secure Boot mode.
+.P
+If the kernel is appropriately configured, lockdown may be lifted by typi=
ng the
+appropriate sequence on a directly attached physical keyboard.  For x86
+machines, this is
+.IR SysRq+x .
+.\"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=
""
+.SH COVERAGE
+When lockdown is in effect, a number of features are disabled or have the=
ir use
+restricted.  This includes special device files and kernel services that =
allow
+direct access of the kernel image:
+.P
+.RS
+/dev/mem
+.br
+/dev/kmem
+.br
+/dev/kcore
+.br
+/dev/ioports
+.br
+BPF
+.br
+kprobes
+.RE
+.P
+and the ability to directly configure and control devices, so as to preve=
nt the
+use of a device to access or modify a kernel image:
+.P
+.RS
+The use of module parameters that directly specify hardware parameters to
+drivers through the kernel command line or when loading a module.
+.P
+The use of direct PCI BAR access.
+.P
+The use of the ioperm and iopl instructions on x86.
+.P
+The use of the KD*IO console ioctls.
+.P
+The use of the TIOCSSERIAL serial ioctl.
+.P
+The alteration of MSR registers on x86.
+.P
+The replacement of the PCMCIA CIS.
+.P
+The overriding of ACPI tables.
+.P
+The use of ACPI error injection.
+.P
+The specification of the ACPI RDSP address.
+.P
+The use of ACPI custom methods.
+.RE
+.P
+Certain facilities are restricted:
+.P
+.RS
+Only validly signed modules may be loaded (waived if the module file bein=
g
+loaded is vouched for by IMA appraisal).
+.P
+Only validly signed binaries may be kexec'd (waived if the binary image f=
ile to
+be executed is vouched for by IMA appraisal).
+.P
+Unencrypted hibernation/suspend to swap are disallowed as the kernel imag=
e is
+saved to a medium that can then be accessed.
+.P
+Use of debugfs is not permitted as this allows a whole range of actions
+including direct configuration of, access to and driving of hardware.
+.P
+IMA requires the addition of the "secure_boot" rules to the policy, wheth=
er or
+not they are specified on the command line, for both the builtin and cust=
om
+policies in secure boot lockdown mode.
+.RE
=2D-
2.28.0

