Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE3FD290437
	for <lists+linux-man@lfdr.de>; Fri, 16 Oct 2020 13:41:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406864AbgJPLlA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Oct 2020 07:41:00 -0400
Received: from mout.gmx.net ([212.227.17.21]:32949 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2406863AbgJPLk7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 16 Oct 2020 07:40:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1602848446;
        bh=HtKvUyCWr27N5YafnJ+sAmziWCG7uJMu7KT8nNtFnug=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=Y5DAOpxo8c0780Ps+haaIuEH6GkCIt7RvEEXIvcTAjaHb0eX5Ja5of2mo0b4VqEON
         YScf6BQUQXcMkZGbh8iJD+CUDxHmfbW4+vlpUvvpjhBtJdoANKOO4s4QAMmF6yDOQh
         zJlsGPE3b1z8mZrmfWmZlnxx/cEzGcrDjejAeGMM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.70] ([178.202.41.107]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mzyyk-1kHmQa2ynO-00x1a8; Fri, 16
 Oct 2020 13:40:46 +0200
Subject: Re: [PATCH 1/1] kernel_lockdown.7: new file
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Matthew Garrett <mjg59@google.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        David Howells <dhowells@redhat.com>
References: <7b9485d9-e286-a61e-63b6-15459dfc1f17@gmail.com>
 <20201016112834.12530-1-xypron.glpk@gmx.de>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Autocrypt: addr=xypron.glpk@gmx.de; prefer-encrypt=mutual; keydata=
 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 Eg==
Message-ID: <b8f4fef7-514c-0ac0-e6b7-a3c31763b052@gmx.de>
Date:   Fri, 16 Oct 2020 13:40:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201016112834.12530-1-xypron.glpk@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:u2qPBCsPove21x3P3bqzV4Mg9F/ztspT4Ae8S1TRwi5O71ahKrb
 KG0CJ28vTWaY4spz+yvdlJQw7UDKw6/zllZGH0Zza7GBkJwsrB+1N0bGlCqEaRyvPjPBHCK
 UDHYb+6UwVepeC2yWdmKkm7bhf0z/em6h13hYtxigldTLrSekIhC2oEdKMzNCa+z5KTGLUu
 KoSRrLXJ3Idp7cBisAqQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ghw+b/u+nyU=:xCJlUI+/UpjX3dAAbMZNNm
 sl0oKBneMJ5CRxI6KG8nOvmhUjDkN688OmgSECnwlSMZRzssp2oix3plOaj6CC7ZWkkrJmEuS
 UP2YlWsIIn0lYIj5qV3ZIExFz5pC+9VIinxGpb3pw1HEOsXuupNxXP4ebTOYC9Ugo3ADTpjVJ
 2hAI+iqo62y/FlMpKmH9oE1eWk13wFZguQfImmvMJRc4YdJNGZcLsrIRL4h3K1d2GTOq6d4sn
 8a0qp4DU50v8vQYdL4yIc5F9DkH88t5BPbgVMqNKTL8RLpc7MQRBQq++eP8ZYdsIBZn3HrGM5
 BgvMi13PZ40TwOIpnRrBkcgOBwOmvmONJeRLxBeqAm/COIePgWaVEqcgG8dySfxa9urE5qB6l
 z9DPXoRANyVV5Tw0UrVKUgbu5RasXV2iuQvJYZXQJkCUaJ4LRTmYQjdN9sm362f3wkcx43Nwd
 +vlwFr4pL/YGcoyDkQzoeF84renLHU1BExhrtNjQM5qMfCcord/TsmFvxkYeHDAL6FXcoqs7i
 Hdg8VYMRS8ui96bW3jZhF6ejMEHJoB5+V66sGttVwYoGfFB3saMYHGJcFlOLrRXyXq9H4rS1b
 32esrZMTL/R65+WYdnLD9RaW4D5m9JsZLh0a8NjOxmGo1thwdYkdjCZe0t0014Sm73cIeXQZs
 6LDLxUF2mTqnVv2P7b3HRJ1zMv9Nkxi/uNrrextTYQbCXvGPp7qTouTh5rRP+eJZwTJuijrRy
 aSMmiR1Foj+piyWoZGcGQfX3cz3yKMO1l3zHR6+ofsjGA/pxuKeLgKMNcjASM/qmAMNFoRUsI
 XSvhQ+1dGjuwbVpiIJ+/iKutl3rTEqU2swxHdxoIo2hDoSWjutMTG+jt/MWcmS15a4gzw79qQ
 qIj6TA9/uvGS8iDHFGPA==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 16.10.20 13:28, Heinrich Schuchardt wrote:
> Provide a man-page for kernel_lockdown. The content is taken from a patc=
h
> for the Fedora 34 man-pages available at
>
> https://kojipkgs.fedoraproject.org//packages/man-pages/5.08/1.fc34/src/m=
an-pages-5.08-1.fc34.src.rpm
>
> Signed-off-by: David Howells <dhowells@redhat.com>
> Signed-off-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
> ---
>  man7/kernel_lockdown.7 | 107 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 107 insertions(+)
>  create mode 100644 man7/kernel_lockdown.7
>
> diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
> new file mode 100644
> index 000000000..5ec4289be
> --- /dev/null
> +++ b/man7/kernel_lockdown.7
> @@ -0,0 +1,107 @@
> +.\"
> +.\" Copyright (C) 2017 Red Hat, Inc. All Rights Reserved.
> +.\" Written by David Howells (dhowells@redhat.com)
> +.\"
> +.\" %%%LICENSE_START(GPLv2+_SW_ONEPARA)
> +.\" This program is free software; you can redistribute it and/or
> +.\" modify it under the terms of the GNU General Public License
> +.\" as published by the Free Software Foundation; either version
> +.\" 2 of the License, or (at your option) any later version.
> +.\" %%%LICENSE_END
> +.\"
> +.TH "KERNEL LOCKDOWN" 7 2017-10-05 Linux "Linux Programmer's Manual"
> +.SH NAME
> +Kernel Lockdown \- Kernel image access prevention feature
> +.SH DESCRIPTION
> +The Kernel Lockdown feature is designed to prevent both direct and indi=
rect
> +access to a running kernel image, attempting to protect against unautho=
rised
> +modification of the kernel image and to prevent access to security and
> +cryptographic data located in kernel memory, whilst still permitting dr=
iver
> +modules to be loaded.
> +.P
> +Lockdown is typically enabled during boot and may be terminated, if con=
figured,
> +by typing a special key combination on a directly attached physical key=
board.
> +.P
> +If a prohibited or restricted feature is accessed or used, the kernel w=
ill emit
> +a message that looks like:
> +.P
> +.RS
> + Lockdown: X: Y is restricted, see man kernel_lockdown.7
> +.RE
> +.P
> +where X indicates the process name and Y indicates what is restricted.
> +.P
> +On an EFI-enabled x86 or arm64 machine, lockdown will be automatically =
enabled
> +if the system boots in EFI Secure Boot mode.
> +.P
> +If the kernel is appropriately configured, lockdown may be lifted by ty=
ping the
> +appropriate sequence on a directly attached physical keyboard.  For x86
> +machines, this is
> +.IR SysRq+x .
> +.\"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""=
""""
> +.SH COVERAGE
> +When lockdown is in effect, a number of features are disabled or have t=
heir use
> +restricted.  This includes special device files and kernel services tha=
t allow
> +direct access of the kernel image:
> +.P
> +.RS
> +/dev/mem
> +.br
> +/dev/kmem
> +.br
> +/dev/kcore
> +.br
> +/dev/ioports
> +.br
> +BPF
> +.br
> +kprobes
> +.RE
> +.P
> +and the ability to directly configure and control devices, so as to pre=
vent the
> +use of a device to access or modify a kernel image:
> +.P
> +.RS
> +The use of module parameters that directly specify hardware parameters =
to
> +drivers through the kernel command line or when loading a module.
> +.P
> +The use of direct PCI BAR access.
> +.P
> +The use of the ioperm and iopl instructions on x86.
> +.P
> +The use of the KD*IO console ioctls.
> +.P
> +The use of the TIOCSSERIAL serial ioctl.
> +.P
> +The alteration of MSR registers on x86.
> +.P
> +The replacement of the PCMCIA CIS.
> +.P
> +The overriding of ACPI tables.
> +.P
> +The use of ACPI error injection.
> +.P
> +The specification of the ACPI RDSP address.
> +.P
> +The use of ACPI custom methods.
> +.RE
> +.P
> +Certain facilities are restricted:
> +.P
> +.RS
> +Only validly signed modules may be loaded (waived if the module file be=
ing
> +loaded is vouched for by IMA appraisal).
> +.P
> +Only validly signed binaries may be kexec'd (waived if the binary image=
 file to
> +be executed is vouched for by IMA appraisal).
> +.P
> +Unencrypted hibernation/suspend to swap are disallowed as the kernel im=
age is
> +saved to a medium that can then be accessed.
> +.P
> +Use of debugfs is not permitted as this allows a whole range of actions
> +including direct configuration of, access to and driving of hardware.
> +.P
> +IMA requires the addition of the "secure_boot" rules to the policy, whe=
ther or
> +not they are specified on the command line, for both the builtin and cu=
stom
> +policies in secure boot lockdown mode.
> +.RE
> --
> 2.28.0
>

We should explain in this context:

* string "lockdown" in CONFIG_LSM
* CONFIG_SECURITY_LOCKDOWN_LSM
* CONFIG_SECURITY_LOCKDOWN_LSM_EARLY
* CONFIG_LOCK_DOWN_KERNEL_FORCE_NONE
* CONFIG_LOCK_DOWN_KERNEL_FORCE_INTEGRITY
* CONFIG_LOCK_DOWN_KERNEL_FORCE_CONFIDENTIALITY

The relationship between CONFIG_LSM and CONFIG_SECURITY_LOCKDOWN_LSM is
not obvious in the Kconfig menu as CONFIG_LSM does not mention which
modules are available and CONFIG_SECURITY_LOCKDOWN_LSM does not mention
that it depends on CONFIG_LSM.

Best regards

Heinrich
