Return-Path: <linux-man+bounces-1702-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFB295E7B5
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 06:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 231921F21C26
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 04:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E698457CBA;
	Mon, 26 Aug 2024 04:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sq8IUj+x"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D04027701
	for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 04:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724647252; cv=none; b=ItDpI7dgFpvcLHpPsMACzpfDDJB/hxdSKmKb3NdCh5LcneO22egDFF1yzKpyIQa7Th9z91dahKVzQg8/BmwMNOLsPtp7L6e+QNNLkPrQzwJ6wQxE18B7689wgySSAyLb4GQ2n889/nEDzNF5h7PNnmqRvWUH/S+YXUnkESqqs+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724647252; c=relaxed/simple;
	bh=xsNSHw5dquTyS/hq2LCRMgq1MejR80jtzg/qRH6HVpY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BVevDjADtuxX2HuaVTE7r2rnFuSFRchdnxTO9wrjwms2RzjlS4C6BfZmiiDVHtXJDf57VAbQcM62iatAg46e4RHEyqZvv39AAyKEgMhZHVePV6C6Xh2D/0bGfVpozJXw7a55ud3qhWCH5/pPjAWSzPBK7X02BIp3kuEshyLM4BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sq8IUj+x; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-533462b9428so6543417e87.3
        for <linux-man@vger.kernel.org>; Sun, 25 Aug 2024 21:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724647249; x=1725252049; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=akzTZycwCz2ll5pehZwkOLTqMGHym7xYPiwjS0MzClc=;
        b=Sq8IUj+xGayBJQEkodUZj/byi4me0zyvCskfT4LhgZXROmLa936tVONg5z6dPgR93g
         Evt2hvXyBKgxjVBppX679s8D2Uqk1lU+w93M1Uv2bCONbIrnsCC2EogRDGUKUxIlrQ+/
         Af+tCFpgS2c5CtOctUyfKti7hFjWeqMJjiTt9IKOjzms3hcS3Wvk1oc2LYsZUpuF+peW
         mvWtZ834ebnZL8ZmckZZAgA64xXL2FDvt9LH5H7o86o5BzedNaGOn6xMuL3p/WZRMLLV
         cy6CsITYkbj3fCrU9EhppekwqLUsMLl84kpDzQ4JR7wm6U3Xv9c3rc99sLHq3bcYI30d
         4Zew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724647249; x=1725252049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=akzTZycwCz2ll5pehZwkOLTqMGHym7xYPiwjS0MzClc=;
        b=XCbU6/rGWiaLcivCFEEYHjBC0uWzL1IlwJrEEcDKCpWFAFysjm9kxNPABF1vcAK77R
         DvIpI9+KraXxwpwlCk1fB30XvL+mPV+uhyIB2n1VcWpDVuAt2Rf5LXSU5OctwjHp+ITB
         jk+7nlBflRZRRi2HIP3uK3Wt+Tf6ZVq669QPfERvcBhtKRszkSlQpGhLXBRzD6EZZsYh
         JzHmT9+bglnon7+/uDxzumEPkbGEUp4IBUwOrphz1XGIzsPN6RGirP9M5PFxMidQNg3k
         q8OHsHyVr8HgZtD5+2nWUdVpgn2xdAeQd8C9Q82OeY6qO7QdhKyiVwoOAOOklUe7uswk
         Zv/g==
X-Gm-Message-State: AOJu0Yxr17ka+XbGU+1arS94iSQ1iOwN+I7FBuxyUC37Tn3p3q5jMM4p
	rOe8oniEtlfO6dbVIJIJ19HGE2t5k03jySvJJgL3yRdHj07xRzC+VxHYmfXptB839gmJ5lNhc8j
	iQLu2JvA7gj/kS2kvp+sGe2qV4CMNq+w2fBA=
X-Google-Smtp-Source: AGHT+IGJMmPHFFGkz4dfxmu7W/NAgaYIxMsWpr0NDHhmc3B0GD8P1RCCrI7hWbKdzxr8mdPhit+br/FoI/dAkctN8Lw=
X-Received: by 2002:a05:6512:220f:b0:533:4676:c225 with SMTP id
 2adb3069b0e04-5343887e15amr7825917e87.41.1724647248663; Sun, 25 Aug 2024
 21:40:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
 <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
In-Reply-To: <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
From: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Date: Mon, 26 Aug 2024 07:40:37 +0300
Message-ID: <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com>
Subject: Re: Missing crucial information in splice(2) manpage
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi.
Not sure I have an idea for an example program.

As for a paragraph documenting it, here is a patch of one suggestion,
though feel free to modify it or change it as needed.

--- splice.2    2024-08-26 07:39:07.553952939 +0300
+++ splice.2        2024-08-26 07:38:36.503953192 +0300
@@ -63,7 +63,9 @@
 .IR fd_in ;
 in this case, the file offset of
 .I fd_in
-is not changed.
+is not changed, and the offset pointed to by
+.I off_in
+is adjusted appropriately instead..
 .P
 Analogous statements apply for
 .I fd_out

On Sun, Aug 25, 2024 at 12:08=E2=80=AFPM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hello Absee,
>
> On Sun, Aug 25, 2024 at 07:22:43AM GMT, Absee Seeab wrote:
> > Hello,
> >
> > The splice(2) manpage (at least the version at man7.org) does not
> > specify that off_in/off_out are written to after the operation.
> >
> > This, however, is done by the kernel (observed both by behaviour and
> > source code).
> >
> > Plus I see similar functions (like copy_file_range and send_file) do
> > document this fact, but splice does not, so it seems like a
> > documentation omission.
> >
> > (This caused me a bit of a debugging headache today)
>
> Would you mind adding an example program to that page, and also some
> paragraph that documents that?
>
> Cheers,
> Alex
>
> >
> > Thanks
> >
>
> --
> <https://www.alejandro-colomar.es/>

