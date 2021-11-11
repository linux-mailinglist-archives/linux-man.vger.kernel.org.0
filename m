Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8F4A44DD30
	for <lists+linux-man@lfdr.de>; Thu, 11 Nov 2021 22:38:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234091AbhKKVlg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Nov 2021 16:41:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233819AbhKKVlf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Nov 2021 16:41:35 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0624EC061766
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 13:38:46 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id u1so12010829wru.13
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 13:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zxvoIVWU37B6QVupiOCdu3GMQbW4yk0bBaaiK0moRFA=;
        b=BdtRTds6slYXsFoOxFOo+c8w8XCiHt+EVxRLOCRvxzJWxjz2uyFcSmKbGGF7L3+VfF
         1v32RavoSQWLeKJrAU/Nmnnqi9tc9gLY0fyyuasf5L55UZjGchSrXx6MsoOyUGMQERrU
         xHQCcJjrpuPFXGq2zvdg6nxudNGJ0odwPc2kLR3To6xiiccf60sFmsrMk86DSDAwMrlZ
         b9q2boRY1Ftu0X2tuSHNe5AYi4z4Svg3tR2DymFgE9S1v3xSiYE6vBcbhTDo0Xx3Duum
         IzGEUODaLbNWE6Aj8WBIicX7cn988i5vVSmJ/jI3WlfrV8GSvzTyXa7fpUwEDCJRqu0B
         aZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zxvoIVWU37B6QVupiOCdu3GMQbW4yk0bBaaiK0moRFA=;
        b=o4w9teMz9jGdM/LigHfCiyDqGZxqH/vZqQ8uKkPS+vcl75Tgf/UPMVQtsM7GKombuW
         ZfWVti9XD4MQdEybxWtm0Kmiy+VvvPv9HFzyCCmIIHf9K//lj2e/liMTA6t8z+n8FeYK
         yrT/89xOBogSHDLLDz55nq1EVdQtewfXeF66s8LfXCiioYDhNv8+0faz5eIvQJFaUrlP
         amBYIJKpLWIFZe7xdSbvPj9yedlmmluBwHXuWMv+09aYfWqaFQOhAF78jNec49O2Jd4O
         3I8BtFt0ch3eZ96cTmY3eo1cgcUG9QQWSan3wShvcqNiLfqz5+bLLi9fa99cufxET6L9
         5IyA==
X-Gm-Message-State: AOAM533fVZfB/u/bx4SHf40nJLUgywauNOoCGIw/d9wGQzb6mboUHO3l
        qOiqr1qCB+LiMnFKqR/7U2xw28A+85RxBQ==
X-Google-Smtp-Source: ABdhPJw7Qifk+aI8eMUS0zN0i441RpMtoUBdgkqphywj/Ty9HfovWfp3JK+gRfWmzZPlPwBrYkioPg==
X-Received: by 2002:a5d:4582:: with SMTP id p2mr12565151wrq.364.1636666724439;
        Thu, 11 Nov 2021 13:38:44 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f12sm5254293wmq.0.2021.11.11.13.38.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Nov 2021 13:38:44 -0800 (PST)
Message-ID: <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
Date:   Thu, 11 Nov 2021 22:38:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211111015323.3542313-1-jk@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Branden]

Hi, Jeremy (and Branden)!

On 11/11/21 02:53, Jeremy Kerr wrote:
> This change adds a brief description for the new Management Component
> Transport Protocol (MCTP) support added to Linux as of bc49d8169.
> 
> This is a fairly regular sockets-API implementation, so we're just
> describing the semantics of socket, bind, sendto and recvfrom for the
> new protocol.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> 

I have a few nitpicks below :)

Thanks!

Alex

> ---
> v2:
>   - Fix synopsis variable formatting
>   - Semantic newlines
>   - remove unnecessary escape
>   - make custom constants more obvious
>   - Add URI breakpoints
>   - fix sockaddr_mctp misuse
>   - update to reflect upstream sockaddr_mctp types
> ---
>   man7/address_families.7 |   7 ++
>   man7/mctp.7             | 187 ++++++++++++++++++++++++++++++++++++++++
>   2 files changed, 194 insertions(+)
>   create mode 100644 man7/mctp.7
> 
> diff --git a/man7/address_families.7 b/man7/address_families.7
> index 3e535e66d..3c8299e69 100644
> --- a/man7/address_families.7
> +++ b/man7/address_families.7
> @@ -405,6 +405,13 @@ XDP (express data path) interface (since Linux 4.18).
>   See
>   .I Documentation/networking/af_xdp.rst
>   in the Linux kernel source tree for details.
> +.TP
> +.B AF_MCTP
> +.\" commit: bc49d8169aa72295104f1558830c568efb946315
> +MCTP (Management Component Transport Protocol) interface (since Linux 5.15),
> +as defined by the DMTF specification DSP0236.
> +For further information, see
> +.BR mctp (7).
>   .SH SEE ALSO
>   .BR socket (2),
>   .BR socket (7)
> diff --git a/man7/mctp.7 b/man7/mctp.7
> new file mode 100644
> index 000000000..506826ed6
> --- /dev/null
> +++ b/man7/mctp.7
> @@ -0,0 +1,187 @@
> +.\" Copyright (c) 2021 Jeremy Kerr <jk@codeconstruct.com.au>
> +.\"
> +.\" %%%LICENSE_START(GPLv2+_DOC_FULL)
> +.\" This is free documentation; you can redistribute it and/or
> +.\" modify it under the terms of the GNU General Public License as
> +.\" published by the Free Software Foundation; either version 2 of
> +.\" the License, or (at your option) any later version.
> +.\"
> +.\" The GNU General Public License's references to "object code"
> +.\" and "executables" are to be interpreted as the output of any
> +.\" document formatting or typesetting system, including
> +.\" intermediate and printed output.
> +.\"
> +.\" This manual is distributed in the hope that it will be useful,
> +.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
> +.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +.\" GNU General Public License for more details.
> +.\"
> +.\" You should have received a copy of the GNU General Public
> +.\" License along with this manual; if not, see
> +.\" <http://www.gnu.org/licenses/>.
> +.\" %%%LICENSE_END
> +.\" commit: bc49d8169aa72295104f1558830c568efb946315
> +.TH MCTP  7 2021-10-14 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +mctp \- Management Component Transport Protocol
> +.SH SYNOPSIS
> +.nf
> +.B #include <sys/socket.h>
> +.B #include <linux/mctp.h>

I prefer alphabetic sorting of includes.  And except for the one that 
provides the prototype of the function, I also want them to have a 
comment saying why they are needed.

See for example membarrier(2):

[
SYNOPSIS
        #include <linux/membarrier.h> /* Definition of MEMBARRIER_* 
constants */
        #include <sys/syscall.h>      /* Definition of SYS_* constants */
        #include <unistd.h>

        int syscall(SYS_membarrier, int cmd, unsigned int flags, int 
cpu_id);

        Note:  glibc provides no wrapper for membarrier(), neces-
        sitating the use of syscall(2).

]

Since syscall() is provided by <unistd.h>, it doesn't have a comment. 
Any other include has its comment.  Also, please have a look at that 
page for the formatting of those comments.

> +.PP
> +.IB mctp_socket " = socket(AF_MCTP, SOCK_DGRAM, 0);"
> +.fi
> +.SH DESCRIPTION
> +Linux implements the Management Component Transport Protocol (MCTP),
> +specified by DMTF spec DSP0236, currently at version 1.
> +This is a connectionless protocol, typically used between devices within a
> +server system.
> +Message reliability and ordering are not guaranteed, but message boundaries are
> +preserved.
> +.PP
> +The API for MCTP messaging uses a standard sockets interface, using the
> +.BR sendto (2)
> +and
> +.BR recvfrom (2)
> +classes of system calls to transfer messages.
> +Messages may be fragmented into packets before transmission, and reassembled at
> +the remote endpoint.

Break at the comma.

> +This fragmentation and reassembly is transparent to userspace.
> +.PP
> +.SS Address format
> +MCTP addresses (also referred to as EIDs, or Endpoint Identifiers) are
> +single-byte values, typed as
> +.BR mctp_eid_t .
Types should be in italics.

Branden, I thought this was specified somewhere, but I can't find it. 
Do you know where it is?  Or maybe if your more up to date 
groff_man[_style](7) pages mention that?

groff_man(7) (groff 1.22.4):

[
        .I [text]
               Set text in italics.  If the macro is given no ar-
               guments, the text of the next input line is set in
               italics.

               Use italics for file and path names, for  environ-
               ment  variables,  for  enumeration or preprocessor
               constants in  C,  for  variable  (user-determined)
               portions  of syntax synopses, for the first occur-
               rence only of a  technical  concept  being  intro-
               duced,  for  names of works of software (including
               commands and functions, but excluding names of op-
               erating  systems or their kernels), and anywhere a
               parameter requiring replacement by the user is en-
               countered.  An exception involves variable text in
               a context that is already marked  up  in  italics,
               such  as  file  or path names with variable compo-
               nents; in such cases,  follow  the  convention  of
               mathematical typography: set the file or path name
               in italics as usual (see .IR below), but use roman
               for  the  variable part, and italics again in run-
               ning roman text when referring to the variable ma-
               terial.
]

Anyway, for you Jeremy, I have other pages to follow for consistency:
For example, gettimeofday(2).

> +Packets between a local and remote endpoint are identified by the source

Break after "by" (or perhaps just before it).

> +and destination EIDs, plus a three-bit tag value.
> +.PP
> +Addressing data is passed in socket system calls through
> +.B struct sockaddr_mctp
Type in italics too.

> +defined as:
> +.PP
> +.in +4n
> +.EX
> +typedef uint8_t        mctp_eid_t;
> +
> +struct mctp_addr {
> +    mctp_eid_t         s_addr;
> +};
> +
> +struct sockaddr_mctp {
> +    unsigned short     smctp_family;  /* = AF_MCTP */
> +    uint16_t           __smctp_pad0;  /* pad, must be zero */
> +    int                smctp_network; /* local network identifier */
> +    struct mctp_addr   smctp_addr;    /* EID */
> +    uint8_t            smctp_type;    /* message type byte */
> +    uint8_t            smctp_tag;     /* tag value, including TO flag */
> +    uint8_t            __smctp_pad1;  /* pad, must be zero */

Do we want to tie the implementation to this pad?
Future implementations of sockaddr_mctp are not going to use that byte 
for anything else?

If that definition is not to be set in stone, we probably want to cover 
it with a layer of mistery.  system_data_types(7) for example mentions:

[
        The structures described in this manual page  shall  con-
        tain, at least, the members shown in their definition, in
        no particular order.
]

Something similar might be good for this page.  Maybe "trailing fields 
may be added in the future to this structure.  The structure should be 
zeroed before use, so that future fields are zeroed" or something like 
that (I'm not very inspired for the wording, sorry :), and then remove 
the pad field.

> +};
> +.EE
> +.in
> +.SS Sending messages
> +Messages can be transmitted using the
> +.BR sendto (2)
> +and
> +.BR sendmsg (2)
> +system calls, by providing a
> +.B struct sockaddr_mctp
> +describing the addressing parameters.
> +.PP
> +.in +4n
> +.EX
> +struct sockaddr_mctp addr;
> +ssize_t len;
> +char *buf;
> +
> +/* unused fields must be zero */
> +memset(&addr, 0, sizeof(addr));
> +
> +/* set message destination */
> +addr.smctp_family = AF_MCTP;
> +addr.smctp_network = 0;
> +addr.smctp_addr.s_addr = 8; /* remote EID */
> +addr.smctp_tag = MCTP_TAG_OWNER;
> +addr.smctp_type = MYPROGRAM_MCTP_TYPE_ECHO; /* example type */
> +
> +buf = "hello, world!"
> +
> +len = sendto(sd, buf, 13, 0,
> +             (struct sockaddr *)&addr, sizeof(addr));
> +.EE
> +.in
> +.PP
> +Here, the sender owns the message tag; so
> +.B MCTP_TAG_OWNER
> +is used as the tag data.
> +The kernel will allocate a specific tag value for this message.
> +If no tag is available,
> +.BR sendto (2)
> +will return an error, with errno set to
> +.BR EBUSY .

This is correct.  Please ignore the following comment.

Only for Branden:  I just noticed a difference between man-pages(7) and 
groff_man(7) advise:  groff_man(7) advises to use italics for 
preprocessor constants, while man-pages(7) recommends bold:

[
        Special macros, which are usually in  uppercase,  are  in
        bold (e.g., MAXINT).  Exception: don't boldface NULL.
]

I find it better with bold, since that differentiates variables from 
constants.

> +This allocated tag remains associated with the socket, so that any replies to
> +the sent message will be received by the same socket.
> +.PP
> +Sending a MCTP message requires the
> +.B CAP_NET_RAW
> +capability.
> +.SS Receiving messages
> +Messages can be received using the
> +.BR recvfrom (2)
> +and
> +.BR recvmsg (2)
> +system calls.
> +.PP
> +.in +4n
> +.EX
> +struct sockaddr_mctp addr;
> +socklen_t addrlen;
> +char buf[13];
> +
> +addrlen = sizeof(addr);
> +
> +len = recvfrom(sd, buf, sizeof(buf), 0,
> +               (struct sockaddr *)&addr, &addrlen);
> +.EE
> +.in
> +.PP
> +In order to receive an incoming message, the receiver will need to either have
> +previously sent a message to the same endpoint, or performed a
> +.BR bind (2)
> +to receive all messages of a certain type:
> +.PP
> +.in +4n
> +.EX
> +struct sockaddr_mctp addr;
> +
> +addr.smctp_family = AF_MCTP;
> +addr.smctp_network = MCTP_NET_ANY;
> +addr.smctp_addr.s_addr = MCTP_ADDR_ANY;
> +addr.smctp_type = MYPROGRAM_MCTP_TYPE_ECHO; /* our 'echo' type */
> +
> +int rc = bind(sd, (struct sockaddr *)&addr, sizeof(addr));
> +.EE
> +.in
> +.PP
> +This call requires the
> +.B CAP_NET_BIND_SERVICE
> +capability, and will result in the socket receiving all messages sent to
> +locally-assigned EIDs, for the specified message type.
> +.PP
> +After a
> +.BR recvfrom (2)
> +or
> +.BR recvmsg (2)
> +returns a success condition, the provided address argument will be populated
> +with the sender's network and EID, as well as the tag value used for the
> +message.
> +Any reply to this message should pass the same address and tag value (with the
> +TO bit cleared) to indicate that is is directed to the same remote endpoint.
> +.SH SEE ALSO
> +.BR socket (7)
> +.PP
> +The kernel source file
> +.IR Documentation/networking/mctp.rst .
> +.PP
> +The DSP0236 specification, at
> +.UR https://www.dmtf.org\:/standards\:/pmci

Please, use \: after /, not before.  So '/\:'.  I had a discussion with 
Branden, and he showed me the merits of that style:

<https://lists.gnu.org/archive/html/groff/2021-10/msg00046.html>

> +.UE .
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
