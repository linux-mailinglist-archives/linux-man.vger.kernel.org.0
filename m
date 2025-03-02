Return-Path: <linux-man+bounces-2559-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 79396A4B457
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 20:23:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7378B1889F12
	for <lists+linux-man@lfdr.de>; Sun,  2 Mar 2025 19:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12D81D5CFD;
	Sun,  2 Mar 2025 19:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OkD+Yb4m"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000BE1C1AAA
	for <linux-man@vger.kernel.org>; Sun,  2 Mar 2025 19:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740943434; cv=none; b=oq9HbEjo3SD24H404S7V3eN9oeDGQrQOxKlzdxuuQeLlUvtdwdO8jmr2ziDjmz4troDn4RWKkpX6Ci0XTqJNa8oaSarqkA1cWG29zEWW/JEHuw6X7Rj2ZGL3PYzBsWoKxDrOHEiRVg6jLe461b5DdDUhqreall1XwwvpZZ1bPP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740943434; c=relaxed/simple;
	bh=Vpumk8CcBVnnCOlj6uNYY+B5bcHzlkB31uuqb3J2qZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KhHl9AXKnYyABzMWL53t3pTaO4h2NqbaEnepdeR6uguxov/kbUAkFdmkJOk69R/v4Yd7MsQBIutqvD5WazMFwwSehHmvaVTISRKDpwjb7lgXQs1cMu05aXwGcKF7QeTIi+ZR+IiGRXMjyml4W5jwXbq6qMOzPLis8GI/NnfpIW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OkD+Yb4m; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-390edaee0cfso1687892f8f.2
        for <linux-man@vger.kernel.org>; Sun, 02 Mar 2025 11:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740943431; x=1741548231; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EqzZ7Ohk3SD8kXXAPWUqh2w2dV8V+2pMyWKVkaYCp5U=;
        b=OkD+Yb4mM3uARHNNQYkd9ADBXH3zm1iD1QCNwllrQG+6XuaGkaJIUewlOA9mt1Rln8
         2DPb2T1PvGIK/IesdM3djvDS5KavpWzKmrPBrC5tmjNTQOdeEFr7Ry+EcWBTw/hX7Nok
         da1ohgoYJWeCWyHYGiDBjHKlfOQ5vZq5pscxSBh+du6Xc8kgtDK3NemSOumgIs3FuNfK
         e10cPNx22Wbp21DwbgYlwYGMYtu/pYRTPoPt3OiE1wZ54elgRnXWorcdvCmoTo6MRciY
         fjPzquoRDCrTJshoxbsa7d8TTZUUNlM+2NmGjWDvI1e07bLmXkD9x7ejoEnxJjurlXZ1
         MDoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740943431; x=1741548231;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EqzZ7Ohk3SD8kXXAPWUqh2w2dV8V+2pMyWKVkaYCp5U=;
        b=YTy5MnteHovIcjHHih1VH+AN4vT59H9rGPS/+IH3KhTWQjRWFu1j9oOky7Ek5LgipM
         htgR08HqJhUTI4HG5jrJAFo0rS9frnQTg837NQws5mipCXoC+qO5vGPs6J7/bCsMCJrN
         vLgeA/zR1a8h9QzO7vp+++iuNqrcF+D+64I1EMU18pZYMMEgy8DMzpxlq/Yzpp//wwY9
         pdlHSjXylahfGC0P6XlE7Lr9hyE0TOM9fPv6DZ9HPFs3Uck3VNKqsxu2+OMnbRp1mq2T
         Icy98ZSGjWdO4BMs/HMaHtNmC4dZvDb1bZhWaY9rxc7n530YVlzbKf1khcs6vJ5nPAD1
         beqg==
X-Forwarded-Encrypted: i=1; AJvYcCXQBArLoIKjbWKO8QLfm6GGRtsLoftG7tewP7DRFBcoqm1le49sYgWgtfrh+OmegKymfbBx6H76Tak=@vger.kernel.org
X-Gm-Message-State: AOJu0YwbKX5kumnJbLR15waCKblkpkgBJMTRFR1Lc/hEvc2Ph271z1bl
	4h2lpfnVFpzVz61koBG5jzE8tdqcfSgE9tC9tbrLifesTEKpSqjI
X-Gm-Gg: ASbGncsfrH1GAkhs0N677U8KanXlSz3qKlxybWY46/1RQcEFUq/xuyaEegu0KaFVdu1
	HBDLBis+yhzAUsZEUq0/n0Hzh9XxUIdplNG+woBh4PI/ccx1R95oyWX+BVVc2i9kB3gERXttYIb
	WB4K/ccl3F8HxV9wJ8vIUCrXxQMfDKCRGt2r4ga9I3brHpeoKxqza2qwu0trjRvCZWI6UXUUjxS
	QEU3iS7bcQSHYkWgLqiWnz1yyiqKqmoeu5wrccTgczkpmpItL/h8ihRnbZUSN8mYLjVFb/Ftkvx
	PORFVwudPWHAvD6GqwaZCJtouUsFMJe/G5tIlRFM9Q==
X-Google-Smtp-Source: AGHT+IFEzC0PwpIzZ+JCPOhVZdX2jB4nU7EpJY6+V/AX4eE9SmWGCt/C8VflT2AIrTPCdivthELG9A==
X-Received: by 2002:a05:6000:144b:b0:38f:2cec:f3df with SMTP id ffacd0b85a97d-390ec7d1432mr9135736f8f.24.1740943430992;
        Sun, 02 Mar 2025 11:23:50 -0800 (PST)
Received: from localhost ([2a02:168:59f0:1:b0ab:dd5e:5c82:86b0])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43b736f75ebsm134909685e9.3.2025.03.02.11.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Mar 2025 11:23:50 -0800 (PST)
Date: Sun, 2 Mar 2025 20:23:49 +0100
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Jared Finder <jared@finder.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Hanno =?iso-8859-1?Q?B=F6ck?= <hanno@hboeck.de>,
	Jann Horn <jannh@google.com>, Jiri Slaby <jirislaby@kernel.org>,
	jwilk@jwilk.net
Subject: Re: [PATCH man v2 2/2] TIOCLINUX.2const: Document missing
 TIOCL_SETSEL selection modes
Message-ID: <20250302.440abe5b7da8@gnoack.org>
References: <20250223213642.10042-1-gnoack3000@gmail.com>
 <20250223213642.10042-3-gnoack3000@gmail.com>
 <ef429ddf8a438c47e6fdfbb41b25943f@finder.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ef429ddf8a438c47e6fdfbb41b25943f@finder.org>

Hello!

On Sun, Feb 23, 2025 at 03:19:02PM -0800, Jared Finder wrote:
> On 2025-02-23 13:36, Günther Noack wrote:
> >  man/man2const/TIOCLINUX.2const | 29 +++++++++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> > 
> > diff --git a/man/man2const/TIOCLINUX.2const
> > b/man/man2const/TIOCLINUX.2const
> > index 5db3f6ea6..3aa1c7eb2 100644
> > --- a/man/man2const/TIOCLINUX.2const
> > +++ b/man/man2const/TIOCLINUX.2const
> > @@ -82,6 +82,35 @@ and saved in a kernel buffer.
> >  Select line-by-line.
> >  The indicated screen characters are highlighted
> >  and saved in a kernel buffer.
> > +.TP
> > +.B TIOCL_SELPOINTER
> > +Show the pointer at position
> > +.RI ( xe ,\~ ye ).
> 
> nit: Technically, "at the greater position of start or end".  See how ps and
> pe are swapped if ps > pe in vc_selection().

Thanks, that is a good point, I had missed that.

I happens at a central place in the code, where it technically affects
all operations except for TIOCL_SELMOUSEREPORT, but it only makes a
difference in the documentation of TIOCL_SELPOINTER.


> > +.TP
> > +.B TIOCL_SELCLEAR
> > +Remove the current selection highlight, if any,
> > +from the console holding the selection.
> 
> I'd recommend stating explicitly if this affects the stored characters. (I
> believe it does not.)

Thanks, added.

–Günther

