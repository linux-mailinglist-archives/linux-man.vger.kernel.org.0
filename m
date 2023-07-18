Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AAC9757381
	for <lists+linux-man@lfdr.de>; Tue, 18 Jul 2023 08:01:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230269AbjGRGB1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Jul 2023 02:01:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbjGRGB0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Jul 2023 02:01:26 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCF5CD1
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 23:01:25 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-56597d949b1so2938201eaf.1
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 23:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689660085; x=1692252085;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iMzVUWwi7jWU/6gyM9GsFG2CDlTQoBKW/Yg/ZYgqo4I=;
        b=LAbv9zvxtj+vbG/rRdEoX7+NzZvIiWOOEyrrVbaTQmbT/c98542BmBwQ7UX2L7qWX9
         MGORmCD1nJHJiUi+FTLsEzt4mOkaVHiWkCv6klwGjvCmcWKOAKYbCVyZLu/9fBNwpuEw
         fnYD/ffGupVtxm9q/c/uRMDaC6pwC68bkSJaoAiHGm9PlG0uDiQWJlQYZ6yYxL89Z5cV
         heHgKOrFe2/gYu+PSDxw1lhBlfIj1PH5JgXnRrZpNkg5Wm21wPIpdhbu48VIPiG16uLo
         ym2jPZJFKQDD+H/sXREYHQGVR1wTiJJum2gI5JGki1KsspkPx4EJRF9T4W5uqZkQRWKE
         xalg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689660085; x=1692252085;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iMzVUWwi7jWU/6gyM9GsFG2CDlTQoBKW/Yg/ZYgqo4I=;
        b=cmHLcAX0Bs/lnsI8VEZE7Y5FQcPgnElsZmnm044r30Mohzg1p33bZ4ALkcPvcfWbL/
         t653jt6bvTAkyVgRY4snu+twAGObZpEKfg+noRK1qhJ/BbAm/9YivgP96nMQTk8d/Lvw
         Vjq67Bt8TI+4rEEWpyfdEl2dQbM9GfCoS56+AFZqPHhfldVlRXBts5kZR6RLt45eAOiJ
         lMMFWU2D8vFmgwTKt4AScT3jYotZCLhKptSbjXxc3G/xrvouZaqAxSjfEj4wtWR8ohU7
         EtoMPT1Es67MsN1cCmazHC6RX9I+d5cSKGCNARf89TXHD0HTBaFAsDbNU2MYslCQhSu/
         ZuuA==
X-Gm-Message-State: ABy/qLbI9EfiUkn/BmwHYfWF3i5wa46IY+cvWjdYNngEBhvv4K5tuTa/
        T+qK5ylZig+qASqoGM7ro/ivl5FcuFRTXg==
X-Google-Smtp-Source: APBJJlHEJL+xUoYp87C2XSco3UOH6aByyB1yos92WayIb2PK1j1Bvs8hW60oMn/i5TfxiQBclMxGqA==
X-Received: by 2002:a05:6808:20a7:b0:3a3:ed22:6b51 with SMTP id s39-20020a05680820a700b003a3ed226b51mr14663873oiw.50.1689660084875;
        Mon, 17 Jul 2023 23:01:24 -0700 (PDT)
Received: from firmament.local (c-73-106-204-164.hsd1.ga.comcast.net. [73.106.204.164])
        by smtp.gmail.com with ESMTPSA id c4-20020a25c004000000b00c62e0df7ca8sm287263ybf.24.2023.07.17.23.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 23:01:24 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] recv.2: Document MSG_CMSG_CLOEXEC as returned in msg_flags
Date:   Tue, 18 Jul 2023 02:00:51 -0400
Message-ID: <20230718060121.934187-1-mattlloydhouse@gmail.com>
In-Reply-To: <47e21a59-f74a-4a63-0f13-237c015ae6bb@kernel.org>
References: <20230709213358.389871-1-mattlloydhouse@gmail.com> <363c0f82-969d-1927-1bd5-b664cfc83a87@kernel.org> <20230716234803.851580-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jul 17, 2023 at 7:10 PM Alejandro Colomar <alx@kernel.org> wrote:
> Hi Matthew,
>
> I don't understand what's the purpose of this.  The kernel sets a bit
> just to report to the caller that it set a bit?  No other purpose?
> It feels very weird.  Of course, the caller already has that info,
> doesn't it?

The main reason I posted this patch was because I was confused by the
flag's presence in the msg_flags when I was looking at some strace logs, so
I figured that it would be a good idea to document it. As for the original
purpose of the behavior, it's not really clear, and it may well have been
an implementation artifact that got enshrined in the user space ABI. (Even
io_uring is careful to replicate this behavior!)

This behavior began when the MSG_CMSG_CLOEXEC flag was first added in Linux
2.6.23, with Ulrich Drepper's commit 4a19542e5f69 ("O_CLOEXEC for
SCM_RIGHTS"). Per the commit message, the flag was designed to be
"passe[d]... just like the existing MSG_CMSG_COMPAT flag". Since it was
added to the msg_flags at the start of sys_recvmsg(), the
scm_detach_fds[_compat]() functions in net/core/scm.c and net/compat.c
could read the flag off of msg->msg_flags without having to thread the
recvmsg() flags through.

This was indeed similar to the behavior of MSG_CMSG_COMPAT. That flag was
added in Linux 2.5.65, with commit 3225fc8a85f4 ("[NET]: Simplify scm
handling and sendmsg/recvmsg invocation, consolidate net compat
syscalls."), in which put_cmsg() and scm_detach_fds() in net/core/scm.c
read it off of msg->msg_flags. (It wouldn't actually be set in msg_flags
until Linux 2.5.67, with commit 7e8d06bc1d90, "[COMPAT]: Fix
MSG_CMSG_COMPAT flag passing, kill cmsg_compat_recvmsg_fixup." Both of
these commits are from history/history.git.)

However, the MSG_CMSG_COMPAT flag has been scrubbed from the output
msg_flags since Linux 2.6.14, with commit 37f7f421cce1 ("[NET]: Do not leak
MSG_CMSG_COMPAT into userspace."). That's what I find so unclear:
MSG_CMSG_CLOEXEC was added after the kernel started scrubbing
MSG_CMSG_COMPAT from the output, but the new flag was never written to be
similarly scrubbed.

Later, in Linux 3.10, with commits 1be374a0518a ("net: Block
MSG_CMSG_COMPAT in send(m)msg and recv(m)msg") and a7526eb5d06b ("net:
Unbreak compat_sys_{send,recv}msg"), MSG_CMSG_COMPAT was banned from being
passed to the *msg() syscalls' flags from user space, with the rationale
that they were "not intended to be part of the API". Then, in Linux 4.0, we
reached the current status quo with commit d720d8cec563 ("net: compat:
Ignore MSG_CMSG_COMPAT in compat_sys_{send, recv}msg"), where
MSG_CMSG_COMPAT is allowed (and a no-op) in compat syscalls, but banned
from non-compat syscalls.

So I agree that it's very weird that this flag gets returned to user space,
even while the internal flag that it's modeled after doesn't. I suppose I
could spin up a nice story, where the user-space function calling recvmsg()
is totally separate from the function processing the returned struct
msghdr, and the latter function would really like to know whether the fds
in that message are close-on-exec without having to call fcntl(F_GETFD).
But that's all just a total guess. If you want to know for sure, perhaps
cc'ing Drepper may be worthwhile?

A cursory look hasn't shown me any existing user-space code that depends on
this behavior. Though one library appears to be aware of this behavior,
actively filtering MSG_CMSG_CLOEXEC out of the result flags:
<https://github.com/dutchanddutch/node-socket-calls/blob/ca759a0da87cb11287=
5d158f4a81b45b31f4a871/src/socket_calls.cc#L417>

Also, only somewhat relatedly, some libraries incorrectly attempt to
request MSG_CMSG_CLOEXEC by passing it into the msg_flags field instead of
the flags argument:
<https://git.samba.org/samba.git/?p=3Dsamba.git;a=3Dblob;f=3Dlib/messaging/=
messages_dgm.c;hb=3Drefs/tags/samba-4.17.9#l1272>
<https://github.com/genodelabs/genode/blob/23.05/repos/base-linux/src/lib/b=
ase/ipc.cc#L132>
<https://github.com/proxmox/pve-lxc-syscalld/blob/a14430f3e75c2b695332ad712=
164e599464177fc/src/io/seq_packet.rs#L123>

Thank you,
Matthew House
