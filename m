Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E3B09123620
	for <lists+linux-man@lfdr.de>; Tue, 17 Dec 2019 21:00:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727036AbfLQUA2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Dec 2019 15:00:28 -0500
Received: from mout.kundenserver.de ([212.227.126.135]:54877 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726967AbfLQUA1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Dec 2019 15:00:27 -0500
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N3suW-1hhsfx3hcO-00zmcN for <linux-man@vger.kernel.org>; Tue, 17 Dec 2019
 21:00:26 +0100
Received: by mail-qt1-f172.google.com with SMTP id d5so8189511qto.0
        for <linux-man@vger.kernel.org>; Tue, 17 Dec 2019 12:00:25 -0800 (PST)
X-Gm-Message-State: APjAAAWQ33CEZ3YuaK30mpmCyum2H5txcJvD+NKzxyyo48gbFFz9YuBo
        3fUV4/HTrqU88po0LqS9utJo+74/dSzkvkeYbPI=
X-Google-Smtp-Source: APXvYqwwH3ilh69CwJoAqmgvtysOFdYrNSOrYWhGhCd6j7osHGcEatY41LNQCmTGZTlpOLl0gExZh5mwEb1+6QWH5CY=
X-Received: by 2002:ac8:709a:: with SMTP id y26mr6189053qto.304.1576612824779;
 Tue, 17 Dec 2019 12:00:24 -0800 (PST)
MIME-Version: 1.0
References: <20191217143609.GA23014@brightrain.aerifal.cx>
In-Reply-To: <20191217143609.GA23014@brightrain.aerifal.cx>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Tue, 17 Dec 2019 21:00:08 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2Rv4uEW4acMm_byZQdsH8yNgfuy9qcmT6tmuPrQxvcHA@mail.gmail.com>
Message-ID: <CAK8P3a2Rv4uEW4acMm_byZQdsH8yNgfuy9qcmT6tmuPrQxvcHA@mail.gmail.com>
Subject: Re: Access to CMSG_DATA
To:     Rich Felker <dalias@libc.org>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:Pk5J4qrmmvQoBGp3PpAUPbLk11e7Bdkp4T4bjlEUGylmXUHq8OR
 eCEU8rvN3MsAFxExMrizj3F0do5AdFvI+H395Nl/0Cff5+GtW9F6TD4FkgxxAeBWy1Onq2d
 kukhOj5BM58I6QQM98cQPFJo7UdlqSEYLH8ZH3Nk87B+OZ9TJ+LvTy/0BLCZZo/raqa1hsm
 9BOEC0NEI9HPVc3yCy3nw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PM+ECcZNxuo=:eJJxdbfNNVOt7Bsn/w5rJ5
 C8UYffX2jEozZb9lZw0BZOgYar9B2+KWlKvuVF4Ks1C6orGr1Dng4MTNtM17MDpYvh/e7JHy4
 nD52X4MvOaXUmp+KzNUhy5TswKq4BHykRxez9faybqQ18oX9raArGGr5uWnzHfxd4+J1VcQoY
 B74UbHcFh4OmzopgawweN7FRgDROInms0oaq079tsARK+nhh3KJ8Dy/WG4K4xtgyaKs8a76oo
 /MyG8AWyK/3bfbsQ8W8Bsb4WMVsKIA6yyw280uMhPVnSOSvVSa2pq/abOT3ZheSSRxUuOtpnM
 n6O7Q6Wav53KYnMUaEEDC3A43Rymd8oby4i+9eF5Nz9FYeSrmV7Z953s4BSO9kN5VWgtCZ0s1
 4ypX4f5TMRKEWQY+qqaS6Hhte8Ri0gU90qtRjXkx9CROF+BBbyQbbINg5xip1MWcDr1fqKfx5
 2pSsFbRm72/p9f9kIjTuNYivZ64S6VJCjr/HpgFCu/9J1+iI2++Y2DY77pMz+asCZ9QrdOwGS
 XQHnNw6pk2Xwj5SOj1S05vDQzqGKMwne6SFCP+o66Q9tTuR3PQUJLonFBZnvJIyvHa+9QTePt
 JSWS9vdRR3E2qloZNbP9Wg6cdPBRJAPnqG7neCRexsRZ6HwaOUHgBnIfhdi/37mg/NjOusht5
 bKyfW03Rl7v1Bmn7EbhNAIhvKLnCsRsa/run7utStFv5DpVoLODysSycLJ1i28mFJnxEFgGIS
 kUD+GE1cT0dwRw4b2Cy5qjN6crSI/VOJP3K+XFdDKFJ70dzlR6ABwlDN3TxvyzM8fNVWgMt+1
 Mmy3wcNy7XJU8+stxkKOstHyDklSDRgxb2AjtvAZGCrVVX2lS7AmK64yYegNIitrpLEaC7WZV
 PRhyyYxXPiE4jPbGzhTg==
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Dec 17, 2019 at 3:36 PM Rich Felker <dalias@libc.org> wrote:
>
> It came to my attention while reviewing possible breakage with move to
> 64-bit time_t that some applications are dereferencing data in socket
> control messages (particularly SCM_TIMESTAMP*) in-place as the message
> type, rather than memcpy'ing it to appropriate storage. This
> necessarily does not work and is not supportable if the message
> contains data with greater alignment requirement than the header. In
> particular, on 32-bit archs, cmsghdr has size 12 and alignment 4, but
> struct timeval and timespec may have alignment requirement 8.
>
> I found at least ptpd, socat, and ssmping doing this via Debian Code
> Search:
>
> https://sources.debian.org/src/ptpd/2.3.1-debian1-4/src/dep/net.c/?hl=1578#L1578
> https://sources.debian.org/src/socat/1.7.3.3-2/xio-socket.c/?hl=1839#L1839
> https://sources.debian.org/src/ssmping/0.9.1-3/ssmpngcl.c/?hl=307#L307
>
> and I suspect there are a good deal more out there. On most archs they
> won't break, or will visibly break with SIGBUS, but in theory it's
> possible that they silently read wrong data and this might happen on
> some older and more tiny-embedded-oriented archs.

Good find. I suppose this is going to be particularly annoying for
architectures that are affected because all systems that are in
widespread use are not affected:

- x86, riscv, ppc and s390 always allow unaligned loads
- ARMv6+ mostly allows unaligned loads. Some instructions such as ldrd
  require alignment of four bytes, which is ok, and ARMv5 requires natural
  alignment up to 32 bits, so this is also ok
- On MIPS I think that o32 is fine since there are no 64-bit loads, but
  n64  would likely be affected, if there are still users remaining (musl
  supports it, so I assume there are some users).
- m68k only requires 16-bit alignment
- For the other 32-bit architectures that musl supports (microblaze, sh,
  openrisc), none advertise unaligned-access capability  to the kernel,
  but I also don't think any of them have a native 64-bit load instruction.
  armv5, microblaze, sh and nds32 fix up unaligned accesses in an
  exception handler; openrisc and csky require aligned accesses in user
  space.

> I think it's clear to someone who understands alignment and who's
> thought about it that applications just can't do this, but it doesn't
> seem to be documented, and an example in cmsg(3) even shows access to
> int payload via *(int *)CMSG_DATA(cmsg) (of course int is safe because
> its alignment is <= header alignment, but this is not mentioned).
>
> Could we add text, and perhaps change the example, to indicate that in
> general memcpy needs to be used to copy the payload to/from a suitable
> object?

Yes, I think that would be a good idea.

         Arnd
