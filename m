Return-Path: <linux-man+bounces-1710-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D42C195FFA4
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 05:09:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 119E71C21A83
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 03:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D3DD1773A;
	Tue, 27 Aug 2024 03:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nN7jxFDs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3458110A3E
	for <linux-man@vger.kernel.org>; Tue, 27 Aug 2024 03:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724728187; cv=none; b=k6+mItcWSPys36iYAqpn3k5tb4qpMdW6PDF/5kQxUNxh1gOoVNaa/bd72RWHYagIlqxLyfhF4SnE64WJSJPPe//plAWAXrpzvVUDJkYJKXYoVxdmt2HfI0MQGsX8DY9g2pyDbUmDrW9x3qwhCBZWx4JtWrGk9TToDg98Bf6jG2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724728187; c=relaxed/simple;
	bh=DIhYIQ+JPsiGae9jd4qr+o4jDcUVsHYYqP7mCcfFtZY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rWX0I43UiV2+gOrFLR19CLOnVrU1Q0jCLOocO70KfmHg4221HAi748fjuo4JyxFhYJeBbJdCTkab77l6kYk1/6XLhLPlWvZjo8ylLdMfazecj8prUl1MpbFm4ZpZM9aIG9+U+lGALGT16h3htRksCAt7Ms3MbkrVDMS546kcHE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nN7jxFDs; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5a10835487fso7463353a12.1
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 20:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724728184; x=1725332984; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lYlhyhehC521JkAYiIJOTxP8qGteuWbqnZ+gfUDYK9g=;
        b=nN7jxFDsra5OyW5rbZPre4KJLQriOALDHeaETc1JdLvVKzqDwutALKty2fDQ2LCxlg
         gwGd9+H43xjuASAnRQvRYfiMEkykQPykZ7nW/S9wlzH7o6POOP3Uep3iNtZUHw8qnk0C
         5o59kmeFe0gxV59v7T7oDWUBd82SDZlxgpgydvQr9zU683fBKIBBoIkrmSMyANtUk0RK
         0Q+5ABkyCbXUt0JOrsZM1cIPgKFhzZtANkKJfe9aLSm8WeVMjwVwrGdmi+LoookmLGuB
         9y2NFiymrvPYWYzJ0AnR/kxri3RPkLdvbyKweghFhB6tMlnXvtWKYpN3BxHo79/uL9E9
         ffaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724728184; x=1725332984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lYlhyhehC521JkAYiIJOTxP8qGteuWbqnZ+gfUDYK9g=;
        b=Px9XsdAsN4E7IIXlBLyaJUIgOX6NSg6PRp9gtLcDFu/OCd0y901PN0omFaQw3QyHmQ
         NSfmSTDnfDM5dreyb6DBOXjYeUVZqAY5yLgQ0css5tt66RgUJ0//0vVj1YZBJIYrQN7Y
         HXNVm6G+YGSD/FCdSyUDYCJ16FKz57P2OAx5RlVvypHtLPotnhGwj8J9mcoH1fSrqVuF
         LOol1ENSdbyEDp+0DnOIu2CXg5+7z5v1qpVmtqzMkeUEI3BTJPyptekqaiS4ybTXElSD
         oxZz5BNVA9Oq4yeYYAl1eN/CDhIMUWf/zEdaKi1XDFK6kZHjE7k9NXjT6olTUCbs+TjX
         1MsA==
X-Gm-Message-State: AOJu0YxNZi7WvbKtRndOlUogrfumOl0s1KZsVVQhMkq3mZHnvpJ7dLNp
	MXS7wJIjwdyzTnfeBUS8J/AJx2Iztlpe3MS/WbiuPYTtj/UYMuWoPq8OVnYCP94TAvlxdRu+tnS
	5UDLmSmvdRn9qhgPutC32CUEX5I6jPbJ6apM=
X-Google-Smtp-Source: AGHT+IHGjzWyjETLzXVBvBZWs2C8aRRUB15VjGunBSuXKLxUlEA61jAplDGZEQyuVIJ3FiSen8flLKyJdhYDt4HT7qo=
X-Received: by 2002:a17:907:7d89:b0:a83:94bd:d913 with SMTP id
 a640c23a62f3a-a86a516542emr844577466b.10.1724728184182; Mon, 26 Aug 2024
 20:09:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
 <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
 <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com> <mztcfeqtqhzmw2bng7sbs3h3ym4t63hrlolcj7uctdkxy37yox@7uqjzipgst4y>
In-Reply-To: <mztcfeqtqhzmw2bng7sbs3h3ym4t63hrlolcj7uctdkxy37yox@7uqjzipgst4y>
From: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Date: Tue, 27 Aug 2024 06:09:33 +0300
Message-ID: <CAHeAhPRcRaxryqc20-XQNo-KPs-=8ObyrfW35w8Kyux+fwBOAA@mail.gmail.com>
Subject: Re: Missing crucial information in splice(2) manpage
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not sure that's a good way to construct documentation examples
personally, but here is an example program demonstrating that my claim
is correct, as I agree that's useful for you to have.
Feel free to edit it as you see fit.

#define _GNU_SOURCE
#define _FILE_OFFSET_BITS 64
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
        int fd =3D open("example_file.dat", O_WRONLY | O_CREAT | O_TRUNC, 0=
666);
        if (fd < 0) {
                printf("couldn't create example file");
                exit(1);
        }

        int pipefd[2];
        pipe(pipefd);

        char ch =3D '\1';
        write(pipefd[1], &ch, 1);

        off_t offset =3D 0x10;
        if (splice(pipefd[0], NULL, fd, &offset, 0x10, 0) < 0) {
                printf("splice FAILED");
                exit(1);
        }

        close(fd);
        printf("done - new offset is %lld", (long long) offset);
}

On Mon, Aug 26, 2024 at 1:12=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Absee,
>
> On Mon, Aug 26, 2024 at 07:40:37AM GMT, Absee Seeab wrote:
> > Hi.
> > Not sure I have an idea for an example program.
> >
> > As for a paragraph documenting it, here is a patch of one suggestion,
> > though feel free to modify it or change it as needed.
>
> Maybe write a program that demonstrates that the statement is true
> without having to look at the kernel source?  That will probably serve
> for the EXAMPLES section.  :)
>
> Have a lovely day!
> Alex
>
> >
> > --- splice.2    2024-08-26 07:39:07.553952939 +0300
> > +++ splice.2        2024-08-26 07:38:36.503953192 +0300
> > @@ -63,7 +63,9 @@
> >  .IR fd_in ;
> >  in this case, the file offset of
> >  .I fd_in
> > -is not changed.
> > +is not changed, and the offset pointed to by
> > +.I off_in
> > +is adjusted appropriately instead..
> >  .P
> >  Analogous statements apply for
> >  .I fd_out
> >
> > On Sun, Aug 25, 2024 at 12:08=E2=80=AFPM Alejandro Colomar <alx@kernel.=
org> wrote:
> > >
> > > Hello Absee,
> > >
> > > On Sun, Aug 25, 2024 at 07:22:43AM GMT, Absee Seeab wrote:
> > > > Hello,
> > > >
> > > > The splice(2) manpage (at least the version at man7.org) does not
> > > > specify that off_in/off_out are written to after the operation.
> > > >
> > > > This, however, is done by the kernel (observed both by behaviour an=
d
> > > > source code).
> > > >
> > > > Plus I see similar functions (like copy_file_range and send_file) d=
o
> > > > document this fact, but splice does not, so it seems like a
> > > > documentation omission.
> > > >
> > > > (This caused me a bit of a debugging headache today)
> > >
> > > Would you mind adding an example program to that page, and also some
> > > paragraph that documents that?
> > >
> > > Cheers,
> > > Alex
> > >
> > > >
> > > > Thanks
> > > >
> > >
> > > --
> > > <https://www.alejandro-colomar.es/>
> >
>
> --
> <https://www.alejandro-colomar.es/>

