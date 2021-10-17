Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2D76430B95
	for <lists+linux-man@lfdr.de>; Sun, 17 Oct 2021 20:50:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234276AbhJQSwM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Oct 2021 14:52:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231517AbhJQSwK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Oct 2021 14:52:10 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85428C06161C
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 11:50:00 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id p21so6822389wmq.1
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 11:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=r8lgmBupsf/ojfcb9L0JJ8UBX6j/xEtYqpiiN18crCQ=;
        b=T0MfE2NQvS0YR7K9zqqdxGTnlz7agTt3WJKig0JStDd30KIvV2OLXzIQg6pncfHZHU
         gE8IxgTpRzPxmv6LZhzoL2UDQYevKyJ32MRyJ1lwRVfDnMc8/5F9bIvwbTpe2rmrx0Gz
         tCC3/O+Gfu8BDmijSlS/71HO8ZGLWlK8zKe7KC1hNdfwZaSWaO1kXGjmmVymuKZGpOWx
         wHCyCL4eunzoIxlfF2Sby1PaBIYrek6d18Im3Ty1IB9jn0ZYuRKB6YzEYK6FEktWkmJI
         CMKaa6vBOPE1GnmjAoMvF2x6jduq4Y0ooEqX2wvW2WlvEqm1snK//ApOrTXZMgnNf8Dd
         Mtbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=r8lgmBupsf/ojfcb9L0JJ8UBX6j/xEtYqpiiN18crCQ=;
        b=UqK1SDeCDjEV5IvCJKS2yPt3SHrXej42JLx1EDnnqvieXWb2orfAu80zd13p3tE1/q
         nkmeeS6eupX6MYMuiUh8DhEhH/lROstD6ewUSexca1s1WzNXIKWae0U9ykIw8C7U6LjE
         A2c77yr+iMRXBr2w6RATvY/3NgzgFtYzddt/sZfOApUeJfqkgbYcZD5QQf7i6aPMoFyB
         j29IT3+7ctfRX0wYvnuRJvRruhDWNC97bkso4xNw3FBlYhDmuv+7fFbgKjVh/+tbPT+m
         s9fy4mTM86M3+4ZL+hTVkikDGHqyYfKjnZNVRiYhnWukA5HUUMvz0mfYMU82mH460xHA
         UVtQ==
X-Gm-Message-State: AOAM533guDwGKkxOFrRwTO2ZBrjQyyFdmtcBzje5sZkgrZsZRP2MynqU
        derGRBbKpyKRMNamG9QpdJPV3w5YhKA=
X-Google-Smtp-Source: ABdhPJxCv8eqwA8mOCJ84VREb5uMk2gLa+tXtVg92RGjVj8yV+UKP4TGbMU3ZLqOu2NUHurWYxVSBQ==
X-Received: by 2002:a7b:c359:: with SMTP id l25mr39718174wmj.84.1634496598998;
        Sun, 17 Oct 2021 11:49:58 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n9sm1896448wmq.6.2021.10.17.11.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Oct 2021 11:49:58 -0700 (PDT)
Subject: Re: [PATCH] mctp.7: Add man page for Linux MCTP support
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20211014070519.2037226-1-jk@codeconstruct.com.au>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
Date:   Sun, 17 Oct 2021 20:49:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211014070519.2037226-1-jk@codeconstruct.com.au>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jeremy,

On 10/14/21 9:05 AM, Jeremy Kerr wrote:
> This change adds a brief description for the new Management Component
> Transport Protocol (MCTP) support added to Linux as of bc49d8169.
> 
> This is a fairly regular sockets-API implementation, so we're just
> describing the semantics of socket, bind, sendto and recvfrom for the
> new protocol.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>

Thanks for the manual page!
Please, check some comments below.

Cheers,

Alex

> ---
>   man7/address_families.7 |   7 ++
>   man7/mctp.7             | 181 ++++++++++++++++++++++++++++++++++++++++
>   2 files changed, 188 insertions(+)
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
> index 000000000..eb9b61cb9
> --- /dev/null
> +++ b/man7/mctp.7
> @@ -0,0 +1,181 @@
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
> +.PP
> +.B mctp_socket = socket(AF_MCTP, SOCK_DGRAM, 0);

mctp_socket is a variable name.  See socket.7 for an example.
It should be in italics.

> +.fi
> +.SH DESCRIPTION
> +Linux implements the Management Component Transport Protocol (MCTP),
> +specified by DMTF spec DSP0236, currently at version 1.
> +This is a connectionless protocol, typically used between devices within a
> +server system.  Message reliability and ordering are not guaranteed, but

Please use semantic newlines.  See man-pages(7):

    Use semantic newlines
        In the source of a manual page, new sentences  should  be
        started  on new lines, and long sentences should be split
        into lines at clause breaks (commas, semicolons,  colons,
        and  so on).  This convention, sometimes known as "seman‐
        tic newlines", makes it  easier  to  see  the  effect  of
        patches,  which  often operate at the level of individual
        sentences or sentence clauses.


> +message boundaries are preserved.
> +.PP
> +The API for MCTP messaging uses a standard sockets interface, using the
> +.BR sendto (2)
> +and
> +.BR recvfrom (2)
> +classes of system calls to transfer messages.
> +Messages may be fragmented into packets before transmission, and reassembled at
> +the remote endpoint.
> +This fragmentation and reassembly is transparent to userspace.
> +.PP
> +.SS Address format
> +MCTP addresses (also referred to as EIDs, or Endpoint Identifiers) are
> +single-byte values, typed as
> +.BR mctp_eid_t .
> +Packets between a local and remote endpoint are identified by the source
> +and destination EIDs, plus a three-bit tag value.
> +.PP
> +Addressing data is passed in socket system calls through
> +.B struct sockaddr\_mctp

That escape is unnecessary.  Did you see it in another page perhaps?

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
> +    unsigned short int smctp_family;  /* = AF_MCTP */

We only use 'int' in 'unsigned int', as the kernel does (or attempts to 
do).  checkpatch.pl warns about 'unsigned short int', IIRC.

So, 'unsigned short'.

> +    int                smctp_network; /* local network identifier */
> +    struct mctp_addr   smctp_addr;    /* EID */
> +    uint8_t            smctp_type;    /* message type byte */
> +    uint8_t            smctp_tag;     /* tag value, including TO flag */
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

No escape here.  That's correct.

> +describing the addressing parameters.
> +.PP
> +.in +4n
> +.EX
> +struct sockaddr_mctp addr;
> +ssize_t len;
> +char *buf;
> +
> +/* set message destination */
> +addr.smctp_family = AF_MCTP;
> +addr.smctp_network = 0;
> +addr.smctp_addr.s_addr = 8; /* remote EID */
> +addr.smctp_tag = MCTP_TAG_OWNER;
> +addr.smctp_type = MCTP_TYPE_ECHO; /* fictional message type */

I don't like 'MCTP_TYPE_ECHO':  It's not a flag defined by the kernel, 
so it shouldn't have such a name (it resembles too much other kernel 
identifiers, such as MCTP_TAG_OWNER).  Better something like 
MYPROGRAM_MCTP_TYPE_ECHO, to clearly show the reader that this one is 
really arbitrary.

> +
> +buf = "hello, world!"
> +
> +len = sendto(sd, buf, 13, 0,
> +             (struct sockaddr_mctp *)&addr, sizeof(addr));

This cast is incorrect.  Since the parameter is not a 'void *', that 
cast would give a compile error.  It should be '(struct sockaddr *)'.

There are similar casts in this page which also should be fixed like 
this one.


> +.EE
> +.in
> +.PP
> +Here, the sender owns the message tag; so
> +.B MCTP_TAG_OWNER
> +is used as the tag data.
> +The kernel will allocate a specific tag value for this message.
> +If no tag is available,
> +.B sendto
> +will return an error, with errno set to
> +.BR EBUSY .
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
> +                (struct sockaddr_mctp *)&addr, &addrlen);
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
> +addr.smctp_type = MCTP_TYPE_ECHO; /* our fictional 'echo' type */
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
> +.B recvfrom
> +or
> +.B recvmsg

Use man syntax:

.BR recvfrom (3)
or
.BR recvmsg (3)



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
> +.UR https://www.dmtf.org/standards/pmci
> +.UE .
> 

Please, use break points for both URIs above.  See the source code of 
uri.7, which has plenty of examples.

See also "the Chicago Manual of Style" 
<https://libguides.lorainccc.edu/c.php?g=29361&p=183502> for guidelines 
on that.


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
