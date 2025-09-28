Return-Path: <linux-man+bounces-3992-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCFBBA784D
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 23:23:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C269A3B7488
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 21:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A7725DD0C;
	Sun, 28 Sep 2025 21:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rodriguez.im header.i=@rodriguez.im header.b="Nigi4aT7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209AC225D6
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 21:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759094627; cv=none; b=EKgyMf2devT9gxo5doYPg0Ng9aygjWe10f1uacYnsu1umI7V7eJH/DYUZUmbKwWBYj8zmlYkCfVX8Lzn93SSf/nxBnd3oXshl2xLXThMjnAXoOCaylaSlUGLajDbTGnJ93H6DXc0WEhk3aph+4D0hZoo5gsSaOJwzE6tuh96waE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759094627; c=relaxed/simple;
	bh=Hueqj8b3QaYHxrCOx3QYBUimkmLqJXXvUpB6qYvjovA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OUBXrOth7fhxasIiNXJw10G30bhNPCyJmz6DhyKODWOiDI8q5Gf+S7TNlbaNUSGir1KK06DvJhDutM3PGqpQm0rZ+pOKzij7wyMbd6Xov5QSkyu/kaGZ41NtA0cb0ljPLCz5KPpnq62k33PNwE6wUGv3tD+X95qcI6H+IFT7z3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rodriguez.im; spf=pass smtp.mailfrom=cristianrodriguez.net; dkim=pass (1024-bit key) header.d=rodriguez.im header.i=@rodriguez.im header.b=Nigi4aT7; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rodriguez.im
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cristianrodriguez.net
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-55784771e9dso2028097137.1
        for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 14:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rodriguez.im; s=google; t=1759094624; x=1759699424; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6OULJ/Kw3BSiuAYjU0a0bgEU6BzP+LG9rMwxDlCR60w=;
        b=Nigi4aT7fYzxhrPO2un0n5IkniAQ2YFZXLFuKkmjguiHm9Pp13FudMc87hK4v9DU8T
         Eg2f4wMDFkyXOSSlSlVhHECgjq+Dx9MsG60Cotj71UnASQ2DaGhiH0l16WIEFGIX5QGq
         aam9IEnpu0qVL3PrO6KXA2QHqtU+CBEKF0yfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759094624; x=1759699424;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6OULJ/Kw3BSiuAYjU0a0bgEU6BzP+LG9rMwxDlCR60w=;
        b=whh3cSttJ2ps7JgRgEMnzVf/EY00beiiONXSPhH1bI6ec05GahBSz1CkFG0P2H8xyV
         nsVvtjVrzx0qpPDMJYw4QW0QIRCmw2QNTRcHwiVGsSEGkMhIdRVRfxLZ3wYPcuGAEFEu
         4WkWu9RpxwLpRIM7L+mFkM5URV0Za1O3E7oquDkn4Qvo5ZfqTgyaTmhMIyCC5o/fSHZN
         I/oJseF4txHMemq80dTIYIuyhNrEoUqmzw5IRedPBmwvvQ8Bln9W0lpTficKlTrKibV+
         ZqNBLBy9YdXeyAHAGVOiFPVZYbOGUORIX8D3/SD/BgFHfMRAaiiIMvWGLHyrNJrHArXn
         ZaNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFO9l06Wmae/KHERXlSqOecOFFzUKdXz1F7K/SSR7dGUuL7w9SS3AcKR3pEO1+kmlpTpbBV6qBeQY=@vger.kernel.org
X-Gm-Message-State: AOJu0YzeHR5uzVYYYhSC8bj/dfX6Nf7AqtVSzw8kk5FNb9hj/XquAtqy
	Fh5AoKOUHCnhm7V4p1rdWS460OsKwkKeytusqORlTfgAxDXVU26mCfWROK/9WLilsC74Q8siVuP
	xj86UvogB8yk0p0hyz6vX3GdUlmAh1++XEVev12Sp
X-Gm-Gg: ASbGncuvOG7y0o8GbqNc1I8YfycaAPyFSu3E5mu0TBSzrlS5UbtB47iTE4Xy0f2GhJa
	nnVRCCP5oSvcIMXpGKAt3EyZfTEJcslcHUWnOjYTlNpsxVAjmvnuL8OWnNGQd9grBgt0Dcv6/zU
	GhnanVcszSXZVTQaiIZwbiVXYt4l1Bgx3Zm5bRHGQAicltVvVT8l23VwL5FOIGuzWaiQvD93qa4
	QtpLge3HQZYmHVBHwg=
X-Google-Smtp-Source: AGHT+IEvRi28mKwdMQCK/cQ9FdMULb5uBL9r3s60kuowbxeTuEd1nxAdNJ0lSjBq2C5qq463ozygjZfcQXCicn01tWI=
X-Received: by 2002:a05:6102:58c2:b0:5ca:d427:f1db with SMTP id
 ada2fe7eead31-5cad427fc40mr63631137.35.1759094623986; Sun, 28 Sep 2025
 14:23:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7> <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
In-Reply-To: <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
From: =?UTF-8?Q?Cristian_Rodr=C3=ADguez?= <cristian@rodriguez.im>
Date: Sun, 28 Sep 2025 18:23:31 -0300
X-Gm-Features: AS18NWAQQLyYJ5yPzJUH7Evf5UQVev-NrVPw3f4mXBoRjOBtW8i6V0BOuMJld7A
Message-ID: <CAPBLoAd8bMrOLjURHRvVW4_eEJYgcA9Np0++YPG1dLJoWfcWWQ@mail.gmail.com>
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not documented
To: Alejandro Colomar <alx@kernel.org>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 28, 2025 at 5:40=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> On Sun, Sep 28, 2025 at 10:26:33PM +0200, Alejandro Colomar wrote:
> > Hi!
> >
> > Another thing I realized about getpwent_r(3) et al. is that gr->gr_mem
>
> Actually, getgrent_r(3).
>
> > is allocated by the function, but is expected to be freed by the caller=
.
> >
> > I didn't find this documented, neither in the manual page nor in the
> > glibc manual.  Is it documented but I missed it?  Or did I misunderstan=
d
> > something?  Or is it just that nobody documented it?

It is just not documented it seems, that's great..another footgun..

