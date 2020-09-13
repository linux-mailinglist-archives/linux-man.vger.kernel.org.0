Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35429267FBF
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 16:18:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725936AbgIMOSN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 10:18:13 -0400
Received: from brightrain.aerifal.cx ([216.12.86.13]:53084 "EHLO
        brightrain.aerifal.cx" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725932AbgIMOSM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 10:18:12 -0400
Date:   Sun, 13 Sep 2020 10:18:11 -0400
From:   Rich Felker <dalias@libc.org>
To:     =?utf-8?B?w4lyaWNv?= Rolim <erico.erc@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        musl@lists.openwall.com, ericonr@disroot.org
Subject: Re: [musl] [patch] posix_fallocate.3: add note about error codes for
 musl.
Message-ID: <20200913141808.GM3265@brightrain.aerifal.cx>
References: <CAFDeuWPmWWHatxnZ9HsYN2fp3gagHOKCsKmVDj0F6us9XWKwFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFDeuWPmWWHatxnZ9HsYN2fp3gagHOKCsKmVDj0F6us9XWKwFQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Sep 13, 2020 at 05:06:25AM -0300, Érico Rolim wrote:
> As can be seen in
> 
> https://git.musl-libc.org/cgit/musl/tree/src/fcntl/posix_fallocate.c?id=73cc775bee53300c7cf759f37580220b18ac13d3
> 
> musl returns the syscall's errors directly, which means it doesn't
> perform the same emulation as glibc, and, more relevant to this change,
> it can return more errors than the ones currently listed in ERRORS.
> ---
>  man3/posix_fallocate.3 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man3/posix_fallocate.3 b/man3/posix_fallocate.3
> index 58338d673..2e440b3e1 100644
> --- a/man3/posix_fallocate.3
> +++ b/man3/posix_fallocate.3
> @@ -101,6 +101,10 @@ referred to by
>  .B ESPIPE
>  .I fd
>  refers to a pipe.
> +.TP
> +Libraries that don't perform the emulation shown in NOTES, such as musl libc,
> +may also return the error codes listed in
> +.BR fallocate (2).
>  .SH VERSIONS
>  .BR posix_fallocate ()
>  is available since glibc 2.1.94.
> -- 
> 2.28.0

I think this should be documented the other way around -- adding
EOPNOTSUPP to the list of errors, with a note that applications may
not see the error due to emulation by glibc, but should be prepared to
handle it. The emulation glibc does is highly unsafe (can corrupt the
file -- see https://sourceware.org/bugzilla/show_bug.cgi?id=15661) and
the only reason it wasn't removed was that software had come to rely
on it being there, in part due to lack of documentation otherwise. If
that's fixed, it's possible that glibc could eventually fix this bug
with a new symbol version.

Rich
