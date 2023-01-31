Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65E9B68340E
	for <lists+linux-man@lfdr.de>; Tue, 31 Jan 2023 18:40:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbjAaRj7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Jan 2023 12:39:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbjAaRj6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Jan 2023 12:39:58 -0500
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CBC54E50B
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 09:39:57 -0800 (PST)
Received: by mail-qv1-xf34.google.com with SMTP id s4so11652269qvo.3
        for <linux-man@vger.kernel.org>; Tue, 31 Jan 2023 09:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SWwIRh8PmWe4QdB724Qd1OFU8sQT0LJI3gfUnEXLZI4=;
        b=q6t0ODU+NjQSkG7LvHI7JXmE+bMDGd0CKTbPCAMWxq5W6PSv5r9FroCOY9qO7qRzTW
         5YUcJw53X2g+OA6euc9Pg3CfUMic0iy/kDHpDUoV+9vvHlRGrVw3XDnNF4FEUTdxACDW
         /1L/w8ZhlpELdbGbjn7TNTbhbNg4UmvJr6G7LtFjdZmxhfvo5JJfQ+69MfnRbZA86fu8
         A4pt65GeKsyLNEvBD0qPJRjGFkIFsYxrmfvQdTwJ/XJq1YdgBqno167/Yddk5KhKN9aM
         lnf7VxftPQKksYRFOj9Ue33XRgB/JJKc79DgFuIYZFtCvJtUOaKUiSX/kNNl7wjBc7NU
         UHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SWwIRh8PmWe4QdB724Qd1OFU8sQT0LJI3gfUnEXLZI4=;
        b=4A4CU/3y4qaVkoLCebQ9RsF4WoVPGSfeVH/jEe08YB7895KKSK6+MMHbVOdNt1ab2A
         7PRJVkcPJyskzbGrMQt7B2RlQM6gK1pywmdapbr3TI69MsjlWVzZh2FaVT0YkC/1pXjA
         iMH5MwEbF/bmrp4mxMT4uPs2hvUkeRzXag4X4yO/u3X1dZ32O62sM5dfS10kPHgJ29kr
         74yaiatEo3euTnZqtQW9CUBDrVw6B3Qx0qCQdn69Wxc1PGd52rGWyWm5koTtSN6/+bc/
         6G7UJdUCGvksjSEB4HhXv3u7hpiUubr4SesXRHOKyVi+qXWCdRCmNl/y+miwjB7mhY2F
         zR+A==
X-Gm-Message-State: AO0yUKX/gwxjdf/3MuBkK8MdJUXPYngkYSrwLl/+rBXMZlqoqcKA3Pio
        Vf2fym2MrEj6c6vWQRyEv1DguFO4FkXDO8x1m7dH89T/4Y6y1yO8gLA=
X-Google-Smtp-Source: AK7set+hiQpiNQv4BFT3soU+50seLK/NDSrsmFFb2CcR9ZqollrFAsQLcc/jM+OnzpT5v97sYcjxZ1WSqs4ew+VcKUc=
X-Received: by 2002:a0c:fe07:0:b0:53b:c24d:d224 with SMTP id
 x7-20020a0cfe07000000b0053bc24dd224mr506286qvr.56.1675186795980; Tue, 31 Jan
 2023 09:39:55 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoqTHGh-VLMSN7H6t9K95TddyCRm2L6f-mnYv6dSquc3nQ@mail.gmail.com>
 <b1496bcd-4cf5-ba8c-8e83-c262f4af178e@gmail.com>
In-Reply-To: <b1496bcd-4cf5-ba8c-8e83-c262f4af178e@gmail.com>
From:   enh <enh@google.com>
Date:   Tue, 31 Jan 2023 09:39:44 -0800
Message-ID: <CAJgzZooXi8G=Ega2VN26KGBC7pKknRAW6E1tWXYr81_Dx2BZgA@mail.gmail.com>
Subject: Re: [PATCH] vdso.7: fix risc-v symbol names.
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000e9522d05f392d1ad"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000e9522d05f392d1ad
Content-Type: text/plain; charset="UTF-8"

On Tue, Jan 31, 2023 at 4:52 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi!
>
> On 1/31/23 00:02, enh wrote:
> > The kernel git history says the names have always been "__vdso_" rather
> > than "__kernel_", so I assume this was a copy & paste mistake from a
> > different architecture.
> >
> > Luckily, the path to the kernel source that lets you confirm/deny this
> > _is_ correct :-)
>
> Could you please sign the patch?

done. (i did read that part of the docs, but assumed this counted as a
"trivial" patch :-) )

>
> Also, it seems something is broken in the patch; maybe the mailer broke it?  I
> can't seem to apply it.  Please check.

ugh, yeah, gmail and tabs really don't get on, and this file is full
of tabs. trying again as an attachment...

>
> Cheers,
>
> Alex
>
> > ---
> >   man7/vdso.7 | 12 ++++++------
> >   1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/man7/vdso.7 b/man7/vdso.7
> > index fabb34d0d..9f47efc7d 100644
> > --- a/man7/vdso.7
> > +++ b/man7/vdso.7
> > @@ -459,12 +459,12 @@ The table below lists the symbols exported by the vDSO.
> >   l l.
> >   symbol version
> >   _
> > -__kernel_rt_sigreturn LINUX_4.15
> > -__kernel_gettimeofday LINUX_4.15
> > -__kernel_clock_gettime LINUX_4.15
> > -__kernel_clock_getres LINUX_4.15
> > -__kernel_getcpu LINUX_4.15
> > -__kernel_flush_icache LINUX_4.15
> > +__vdso_rt_sigreturn LINUX_4.15
> > +__vdso_gettimeofday LINUX_4.15
> > +__vdso_clock_gettime LINUX_4.15
> > +__vdso_clock_getres LINUX_4.15
> > +__vdso_getcpu LINUX_4.15
> > +__vdso_flush_icache LINUX_4.15
> >   .TE
> >   .if t \{\
> >   .in
>
> --
> <http://www.alejandro-colomar.es/>

--000000000000e9522d05f392d1ad
Content-Type: application/octet-stream; 
	name="0001-vdso.7-fix-risc-v-symbol-names.patch"
Content-Disposition: attachment; 
	filename="0001-vdso.7-fix-risc-v-symbol-names.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ldkiy8ra0>
X-Attachment-Id: f_ldkiy8ra0

RnJvbSBkZDhiYjcwOWU2NWM5YzMyMjViMWE5ZTY4OTYzYWM2ZjdlYzg5MjAxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IE1vbiwgMzAgSmFuIDIwMjMgMjE6NDY6MDkgKzAwMDAKU3ViamVjdDogW1BBVENIXSB2ZHNvLjc6
IGZpeCByaXNjLXYgc3ltYm9sIG5hbWVzLgoKVGhlIGtlcm5lbCBnaXQgaGlzdG9yeSBzYXlzIHRo
ZSBuYW1lcyBoYXZlIGFsd2F5cyBiZWVuICJfX3Zkc29fIiByYXRoZXIKdGhhbiAiX19rZXJuZWxf
Iiwgc28gSSBhc3N1bWUgdGhpcyB3YXMgYSBjb3B5ICYgcGFzdGUgbWlzdGFrZSBmcm9tIGEKZGlm
ZmVyZW50IGFyY2hpdGVjdHVyZS4KCkx1Y2tpbHksIHRoZSBwYXRoIHRvIHRoZSBrZXJuZWwgc291
cmNlIHRoYXQgbGV0cyB5b3UgY29uZmlybS9kZW55IHRoaXMKX2lzXyBjb3JyZWN0IDotKQoKU2ln
bmVkLW9mZi1ieTogRWxsaW90dCBIdWdoZXMgPGVuaEBnb29nbGUuY29tPgoKLS0tCiBtYW43L3Zk
c28uNyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tYW43L3Zkc28uNyBiL21hbjcvdmRzby43Cmlu
ZGV4IGZhYmIzNGQwZC4uOWY0N2VmYzdkIDEwMDY0NAotLS0gYS9tYW43L3Zkc28uNworKysgYi9t
YW43L3Zkc28uNwpAQCAtNDU5LDEyICs0NTksMTIgQEAgVGhlIHRhYmxlIGJlbG93IGxpc3RzIHRo
ZSBzeW1ib2xzIGV4cG9ydGVkIGJ5IHRoZSB2RFNPLgogbCBsLgogc3ltYm9sCXZlcnNpb24KIF8K
LV9fa2VybmVsX3J0X3NpZ3JldHVybglMSU5VWF80LjE1Ci1fX2tlcm5lbF9nZXR0aW1lb2ZkYXkJ
TElOVVhfNC4xNQotX19rZXJuZWxfY2xvY2tfZ2V0dGltZQlMSU5VWF80LjE1Ci1fX2tlcm5lbF9j
bG9ja19nZXRyZXMJTElOVVhfNC4xNQotX19rZXJuZWxfZ2V0Y3B1CUxJTlVYXzQuMTUKLV9fa2Vy
bmVsX2ZsdXNoX2ljYWNoZQlMSU5VWF80LjE1CitfX3Zkc29fcnRfc2lncmV0dXJuCUxJTlVYXzQu
MTUKK19fdmRzb19nZXR0aW1lb2ZkYXkJTElOVVhfNC4xNQorX192ZHNvX2Nsb2NrX2dldHRpbWUJ
TElOVVhfNC4xNQorX192ZHNvX2Nsb2NrX2dldHJlcwlMSU5VWF80LjE1CitfX3Zkc29fZ2V0Y3B1
CUxJTlVYXzQuMTUKK19fdmRzb19mbHVzaF9pY2FjaGUJTElOVVhfNC4xNQogLlRFCiAuaWYgdCBc
e1wKIC5pbgotLSAKMi4zOS4xLjQ1Ni5nZmM1NDk3ZGQxYi1nb29nCgo=
--000000000000e9522d05f392d1ad--
