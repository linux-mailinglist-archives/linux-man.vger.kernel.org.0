Return-Path: <linux-man+bounces-1706-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 168ED95F6C6
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 18:39:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3AFF41C20FE5
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 16:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3DD197A7A;
	Mon, 26 Aug 2024 16:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hJWr4dM4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11651957FC
	for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 16:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724690283; cv=none; b=plASFjS7VZtl8JPum0JwgMHF3uHxXLIFVEnhBcjwcEUgw/PsxJMUcdI4Ao6NOv/8oKbUqRMQOZ9Bdo4g5tJBXIdv01giNWc6Sm1cMBchXKGkIH8FD2GKaWLx8MKMpkIwc94dG8qrK8ey0IHY0uxql88SNYLt729bH9Aw6n+GIUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724690283; c=relaxed/simple;
	bh=4Fr8I8OUez9tcTyQOrTT7mpvI8llSC20hZ2GgBpIriM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lAGzSfMRw0z+aWJv7/YX2R1mMh9hvpmRi/wiHEdOuJVQmdyhp4BgiaEWkeHBVSogy0bPVfhMFz9RlPJjy0IQB2j1z4a+vS1eTbj4L0xcDlpsv4GhBVnHMfFuvbX398RFATZind0tfFsW5Fu2Guuci14tb5GOKi8wyOgKOZF/NaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hJWr4dM4; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6bf747371ecso21338166d6.3
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 09:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724690280; x=1725295080; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RtwdO7LuRPCqLsbuDffV999mCXBmh6bcwdwh+gP7EH0=;
        b=hJWr4dM4Z9681F5TQ7Nl0jkSjySShT4yLlLia0ymsUonevH3LyYz/Qo5+bh+AyQD/G
         LkfEQLTq05ggQ/DJkE8cnUvFWFKq0iU+Uf4eUoL+xLbkaWmd/x801CqupgtdGwiXps2x
         mHuqJwC0I8KyWD1OR3AmuNj4JWTEeitMHinPju0BO7OLlieu6bbqr6Nw2h3FHsc3dVSi
         u5MUYIUFjEMpzpwuuRV2wbVdATI42Z16eYj8Em4C1ASGfunxuM7hqKGZdtFl2GpZNMte
         Z8RIIQN/nq7vYNPpEU2Dx7rT8X8FfKApx0kqpFm1BlLTjgujdSdKKvozMPUNqwTBZH6C
         ep1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690280; x=1725295080;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RtwdO7LuRPCqLsbuDffV999mCXBmh6bcwdwh+gP7EH0=;
        b=UAZYuZS1yS6Vi9LSSWRdg6XASQDbtubFJ4y7MnkOFkLU4ZLbOJWO+F1ibYL6HNoobD
         zTVzptPM5BEi5A02we27WNaY7UurWcvVRk1aT/VRfliFwBvjXktE7xeDUehtmayJOEt8
         JOFupXj69KXUJ2ka67vOuYFknyOYgMXYgYWngYlOqgGVbTcZYGrKZVGcRkk/hpdFdwxS
         t2LdbB4wxfQT6WsTxTNMpwSzhgpPthVk7iCHD9Fcx20B+HoPpcb/pDKS12+SjIAsJB+G
         lxUpIRSe6kj547VAcr5j59jNpoUaVmCAOW34zyXna2qzcl3RrCR6jxJqUkzsqCsP3gmS
         cKkw==
X-Gm-Message-State: AOJu0YyGVxH7SkCHDEmTKoJXajmYHo6F5q7Br0gPibiWboE3PxmYk+69
	0vjWb4gAeIU6Wd6Vwt6QpQEMIL+c8sa0vdPQfm0JIUZZEBGFm8+73S4c1/dfTuRCx0h+YupmgHE
	MIEj4s8BgapDraOGvZsr4JeQZH0AIdal9kpKd
X-Google-Smtp-Source: AGHT+IHW0PjToejQyAjN11fUZiRWhJoh5Q1N/jG7Xjl5Gu35ZCZuGhvFbF/h5ko3EoXIK9u5Gvf3O3wJPGmCygNH3qY=
X-Received: by 2002:a05:6214:3990:b0:6bf:799a:ea14 with SMTP id
 6a1803df08f44-6c16dc50d11mr127378896d6.21.1724690280312; Mon, 26 Aug 2024
 09:38:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
In-Reply-To: <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
From: enh <enh@google.com>
Date: Mon, 26 Aug 2024 12:37:46 -0400
Message-ID: <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

looks like Linux 6.6...

commit 475d4df82719225510625b4263baa1105665f4b3
Merge: 511fb5bafed1 712143795327
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Mon Aug 28 11:25:27 2023 -0700

    Merge tag 'v6.6-vfs.fchmodat2' of
git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs

    Pull fchmodat2 system call from Christian Brauner:
     "This adds the fchmodat2() system call. It is a revised version of the
      fchmodat() system call, adding a missing flag argument. Support for
      both AT_SYMLINK_NOFOLLOW and AT_EMPTY_PATH are included.

      Adding this system call revision has been a longstanding request but
      so far has always fallen through the cracks. While the kernel
      implementation of fchmodat() does not have a flag argument the libc
      provided POSIX-compliant fchmodat(3) version does. Both glibc and mus=
l
      have to implement a workaround in order to support AT_SYMLINK_NOFOLLO=
W
      (see [1] and [2]).

      The workaround is brittle because it relies not just on O_PATH and
      O_NOFOLLOW semantics and procfs magic links but also on our rather
      inconsistent symlink semantics.

      This gives userspace a proper fchmodat2() system call that libcs can
      use to properly implement fchmodat(3) and allows them to get rid of
      their hacks. In this case it will immediately benefit them as the
      current workaround is already defunct because of aformentioned
      inconsistencies.

      In addition to AT_SYMLINK_NOFOLLOW, give userspace the ability to use
      AT_EMPTY_PATH with fchmodat2(). This is already possible with
      fchownat() so there's no reason to not also support it for
      fchmodat2().

      The implementation is simple and comes with selftests. Implementation
      of the system call and wiring up the system call are done as separate
      patches even though they could arguably be one patch. But in case
      there are merge conflicts from other system call additions it can be
      beneficial to have separate patches"

    Link: https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dsysdeps/un=
ix/sysv/linux/fchmodat.c;h=3D17eca54051ee28ba1ec3f9aed170a62630959143;hb=3D=
a492b1e5ef7ab50c6fdd4e4e9879ea5569ab0a6c#l35
[1]
    Link: https://git.musl-libc.org/cgit/musl/tree/src/stat/fchmodat.c?id=
=3D718f363bc2067b6487900eddc9180c84e7739f80#n28
[2]

    * tag 'v6.6-vfs.fchmodat2' of
git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs:
      selftests: fchmodat2: remove duplicate unneeded defines
      fchmodat2: add support for AT_EMPTY_PATH
      selftests: Add fchmodat2 selftest
      arch: Register fchmodat2, usually as syscall 452
      fs: Add fchmodat2()
      Non-functional cleanup of a "__user * filename"

On Sun, Aug 25, 2024 at 5:52=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Fri, Aug 23, 2024 at 02:40:16PM GMT, enh wrote:
> > subject says it all... the "This flag is not currently implemented."
> > on the man page is wrong, i think?
>
> I guess it was right when the text was written in 2006.
>
> $ git blame --follow -- man/man2/chmod.2 | grep currently
> 92f114db82 man2/chmod.2     (Michael Kerrisk   2014-02-21 08:35:27 +0100 =
207) This flag is not currently implemented.
> $ git blame 92f114db82^ -- man2/fchmodat.2 | grep currently
> a53b8cb2a0 (Michael Kerrisk  2006-05-02 00:05:06 +0000  99) This flag is =
not currently implemented.
>
> That might perfectly have changed in the last 18 years.  :)
>
> Would you mind writing a small program and shell session that
> demonstrates it?  It could be interesting for an EXAMPLES section.
>
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

