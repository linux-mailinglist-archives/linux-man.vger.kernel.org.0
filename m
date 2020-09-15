Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 777C526A152
	for <lists+linux-man@lfdr.de>; Tue, 15 Sep 2020 10:56:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726136AbgIOI4k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 04:56:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726122AbgIOI4d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 04:56:33 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E093C06174A;
        Tue, 15 Sep 2020 01:56:31 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id g96so2472636otb.12;
        Tue, 15 Sep 2020 01:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=YZ2xcLhxbjlI52RLvcrAaM6nB7lZoLRxC6ASYMLeKGk=;
        b=uLVVgcraiZB205c1iojS4bfzSDaGM/Dq/UC57Irv7aYG70FRjk0RNTOfWrnj3PQe2x
         xX/zPU3UAW3DjfBgrm+7BSUyUWNLrZ4KyKuUyqQXLCu1zHfL/Og9iaRjQ9eRtFSaxACk
         j6tD2irIdqNBwxUPPeA8l+2Q2QMZBGvxoVysWZWgL2/LWvqEPNwyoiQKQSkyAOL1Yok+
         YhxghCi52WzeYEmWehUJaEJDO7Lmg89joRpTq768uDvGBqgv/5GnHZ31j3uRN3VVLbTp
         VzyFm11yZ5WXB6IYIZnAjlcZCtVQliLxIGTrQKltLqv9NbH0pnnB/t3ceG0VinM0lg3o
         kvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=YZ2xcLhxbjlI52RLvcrAaM6nB7lZoLRxC6ASYMLeKGk=;
        b=Csr1NBnJ/2WHvUSGI+Jt4w6+z9fxW7QA0RfvHpB1hU18Y6kr2wdIfK0+4Pkc5tZR6B
         RyHBJS5l/qmTU8394iso/FIAq9VDBui42YipeJ7AtwFz44faoDoW4+nUXos4YnhZQ7Kv
         PHmZQwRLznBrllJ9bWW+N50+JZZDZ4xRSBLvBsX8XpFqyvqR08v3JhixzyHYgFB9eZWQ
         52yRy6HouYFlKYL7HeSOBLLUgtEzpV56h/enhAeRsdBSWDeHAdfuNYxc6UP/6Sc6UDk0
         lEbKBELzGB5nw9CSfQI4jWxNzpaNvtPFaceWXsJehzEgxaD/+VPxzOF1dCC4/qGoGaaG
         O23w==
X-Gm-Message-State: AOAM532jCNpifpBZ456Dy65OHZVHKHGfhg7Sb2hTpidq5+bjLTTl/pZS
        CbD+ybiVYCYWB8MgE4jYgRiYNxx1JjAbZtoq6Hs=
X-Google-Smtp-Source: ABdhPJy+7ZzAUXeSQKME7L/Y8ZzEzdXlveA5KuXFiYGKgyoem4JHcGwd6ojZMzMog4FTYYviX95GtENFaQrAJ2FM17o=
X-Received: by 2002:a9d:7745:: with SMTP id t5mr12050208otl.114.1600160189856;
 Tue, 15 Sep 2020 01:56:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200914180700.11003-1-stephen.smalley.work@gmail.com>
In-Reply-To: <20200914180700.11003-1-stephen.smalley.work@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 15 Sep 2020 10:56:18 +0200
Message-ID: <CAKgNAkgjndEr4zd1zGD_h+2srWsRAQT7=Hyqh7Ktxy7FQn35Dg@mail.gmail.com>
Subject: Re: [PATCH v2] socket.7,unix.7: add initial description for SO_PEERSEC
To:     Stephen Smalley <stephen.smalley.work@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        linux-security-module <linux-security-module@vger.kernel.org>,
        selinux@vger.kernel.org, smcv@collabora.com,
        James Morris <jmorris@namei.org>,
        "Serge E. Hallyn" <serge@hallyn.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stephen,

On Mon, 14 Sep 2020 at 20:07, Stephen Smalley
<stephen.smalley.work@gmail.com> wrote:
>
> SO_PEERSEC was introduced for AF_UNIX stream sockets connected via
> connect(2) in Linux 2.6.2 [1] and later augmented to support AF_UNIX stream
> and datagram sockets created via socketpair(2) in Linux 4.18 [2].  Document
> SO_PEERSEC in the socket.7 and unix.7 man pages following the example
> of the existing SO_PEERCRED descriptions.  SO_PEERSEC is also supported
> on AF_INET sockets when using labeled IPSEC or NetLabel but defer
> adding a description of that support to a separate patch.
>
> The module-independent description of the security context returned
> by SO_PEERSEC is from Simon McVittie <smcv@collabora.com>.

Thanks for the patch, The text looks in reasonable shape to me. I'm
just hanging off applying for a bit in case some Reviewed/Acked-by
comes in.

Cheers,

Michael


> [1] https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=da6e57a2e6bd7939f610d957afacaf6a131e75ed
>
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0b811db2cb2aabc910e53d34ebb95a15997c33e7
>
> Signed-off-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> ---
> v2 adds kernel commit info to the description and man page and uses
> the suggested text from Simon McVittie for the description of
> the security context string in a module-neutral way.
>
>  man7/socket.7 |  5 +++++
>  man7/unix.7   | 46 ++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 51 insertions(+)
>
> diff --git a/man7/socket.7 b/man7/socket.7
> index 21e891791..c3635f95b 100644
> --- a/man7/socket.7
> +++ b/man7/socket.7
> @@ -690,6 +690,11 @@ Return the credentials of the peer process connected to this socket.
>  For further details, see
>  .BR unix (7).
>  .TP
> +.BR SO_PEERSEC " (since Linux 2.6.2)"
> +Return the security context of the peer socket connected to this socket.
> +For further details, see
> +.BR unix (7).
> +.TP
>  .B SO_PRIORITY
>  Set the protocol-defined priority for all packets to be sent on
>  this socket.
> diff --git a/man7/unix.7 b/man7/unix.7
> index 50828a5bc..298521d4a 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -349,6 +349,52 @@ stream sockets and for
>  .B AF_UNIX
>  stream and datagram socket pairs created using
>  .BR socketpair (2).
> +.TP
> +.B SO_PEERSEC
> +This read-only socket option returns the
> +security context of the peer socket connected to this socket.
> +By default, this will be the same as the security context of
> +the process that created the peer socket unless overridden
> +by the policy or by a process with the required permissions.
> +.IP
> +The argument to
> +.BR getsockopt (2)
> +is a pointer to a
> +buffer of the specified length in bytes
> +into which the security context string will be copied.
> +If the buffer length is less than the length of the security
> +context string, then
> +.BR getsockopt (2)
> +will return the required length
> +via
> +.I optlen
> +and return \-1 and sets
> +.I errno
> +to
> +.BR ERANGE .
> +The caller should allocate at least
> +.BR NAME_MAX
> +bytes for the buffer initially although this is not guaranteed
> +to be sufficient.  Resizing the buffer to the returned length
> +and retrying may be necessary.
> +.IP
> +The security context string may include a terminating null character
> +in the returned length, but is not guaranteed to do so: a security
> +context "foo" might be represented as either {'f','o','o'} of length 3
> +or {'f','o','o','\\0'} of length 4, which are considered to be
> +interchangeable. It is printable, does not contain non-terminating
> +null characters, and is in an unspecified encoding (in particular it
> +is not guaranteed to be ASCII or UTF-8).
> +.IP
> +The use of this option for sockets in the
> +.B AF_UNIX
> +address family
> +is supported since Linux 2.6.2 for connected stream sockets and
> +since Linux 4.18,
> +.\" commit 0b811db2cb2aabc910e53d34ebb95a15997c33e7
> +also for stream and datagram socket pairs created
> +using
> +.BR socketpair (2).
>  .\"
>  .SS Autobind feature
>  If a
> --
> 2.25.1
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
