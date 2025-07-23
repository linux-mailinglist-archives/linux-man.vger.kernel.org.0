Return-Path: <linux-man+bounces-3291-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D6B0FB27
	for <lists+linux-man@lfdr.de>; Wed, 23 Jul 2025 21:53:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE0711CC08EA
	for <lists+linux-man@lfdr.de>; Wed, 23 Jul 2025 19:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31A88230270;
	Wed, 23 Jul 2025 19:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WVe8sEt5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805B9230BE3
	for <linux-man@vger.kernel.org>; Wed, 23 Jul 2025 19:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753300352; cv=none; b=mgUE9v5lYZF1irF2bE7nV6A+OyOtmeaBX4H1//tZH20ZWmrItSA8crDW90AUjD6pyJIhZVgiRzW4g8TTWsZ7jxiOK6DYnYICCmL5Ga58fHHWudqZJ9sRzrap2HWN9ipXG2i3KDRfEf9taOwLu9nJUNgalB9iPZzXMg39ZatcGG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753300352; c=relaxed/simple;
	bh=4KDIys7N68YGshLsw/0o49hZypW1/g6xxhF/G3EmGmA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=aj+2ju3DxiNCq+aQp4EtFRMiR+d7wkaNOcpcuskBh4gT3tHt00XknIu8IT1UryO6yVlNgs/52kDmnaeKGKG5tIhw2fcOGirTkjachXrL28EqbuUuBshmcrrFL/fArHfRt6OJqyYO4++uowPtYonOUZkQF/dk1lgWXWBpP4VT82A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WVe8sEt5; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2e95ab2704fso276898fac.3
        for <linux-man@vger.kernel.org>; Wed, 23 Jul 2025 12:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1753300349; x=1753905149; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLWFawuckWLXmBH1JPiGbkviaFzhA0eduozzSZUvFHU=;
        b=WVe8sEt50Z2sJT8iIOmzwGIG3qvcPM+rmTNX0QGtS571x8ndMjZm7XzshxtQayd7M3
         61KLh0othG1Jb4aQxA1WtqqSpoQvm82RaDV7AK+GRJLcByWG0xT4+noY9qY858JNeUcb
         tU0n0BOAtEidcLppCa8WKux5nv9sHm1eAwkfefwCiR2vogieHufcZBCspxSJWGeEyx7+
         nj2iyqAJzWPAgiObzq/X/wX25lfAIR2hPG3oLwrv7dI2GLZ9LHYXtvxhvLorv3uAKZfp
         3lA5AwBZMBEtC9BhWHKpPtTr2Ko1ohHJbfpG6ahXMb3TdqVEY3D8TGRyZGaMi+V+ZpRt
         wa4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753300349; x=1753905149;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HLWFawuckWLXmBH1JPiGbkviaFzhA0eduozzSZUvFHU=;
        b=l3CMzOYJRe0OhIahtvN6Pm5/b0sk+WxCeKKt6njRnWXhMy3X+UOCiTfRknXmvIE+o7
         gLc3tAuZ6/7aCdRv3qVbMrZZWDggTgr6VJVxsfvh32sYM8XeMkNNhaIaQvzUICtUNCt1
         WNFnPQyVZQHJHH7uEYeLIgR+K8DLhjt70hLen914KBSxDZkrxUJk6JHsSXwyz2CSRuPn
         kbrlLBbkcG8n/ZAe0DjYnApopF/ciifvV2ILA4nJqN1kLaBNqcVcsw764OfTv8HnIjCy
         aYCxI/IZCHf6utvkogFyQNE5RrEvAvB0vncoP/17Pzt1j1+bdN60Az1UKELqsgJvgwgh
         616A==
X-Gm-Message-State: AOJu0YzV6EreoFat7nAquxIW0oqi1f+M13lgHo0Vt+KPOZl/7gZZNavO
	QhFS7CfrOZS1teJopG+R7+4ehf0oPORJK8a5xGqLdaTjGJrNl8csVAanf17lo7NvN5ZNdBbOJYT
	NPqogcKTtdWtHi9n6osqZdXH/3RKAaXvKkbqyqr9diEtNn46CIXqWdM2H
X-Gm-Gg: ASbGncvwiHg3bWXbf742Z1ojAU1rZAUMrdSGaBfHodioEHmCsY8UVupTDIoNuz0Eki/
	teeCNpFoBj2XJwdvuNpN2Ge7dz0cULJ1wrMxq0yn9yECojJ/ZyUQQPN2QHHYWC2esHLueoITgTi
	tJcpQZAAXsD1ZacTlDa6ivcSCeGqVaJGDDxT58zYr+s2Wo+sQXQk/DJmUYcTZze2Q8a84GTzpWv
	tPC
X-Google-Smtp-Source: AGHT+IHufJDt6JKZZFN/CEzgX6YX3CfNJzYtP2sSPfDGoUHPNxiQ0UdujHZfiyDPFFSn/toyXpuRtX9+mAA1bSnVp+w=
X-Received: by 2002:a05:6870:a113:b0:301:db6b:45dc with SMTP id
 586e51a60fabf-306c6fdce8cmr2915959fac.11.1753300349317; Wed, 23 Jul 2025
 12:52:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZorPGQh1KB0aaW+E=+CBX_YoeOVP_uctxCwWQPNOb0uUNg@mail.gmail.com>
In-Reply-To: <CAJgzZorPGQh1KB0aaW+E=+CBX_YoeOVP_uctxCwWQPNOb0uUNg@mail.gmail.com>
From: enh <enh@google.com>
Date: Wed, 23 Jul 2025 15:52:18 -0400
X-Gm-Features: Ac12FXwe6NI2ZwpZs8wMP1R9SAZvc9A4wOErk79rsKfMxSFzOqj2brkZNNGtAtU
Message-ID: <CAJgzZoqmOfQtrU+yrEG-Jj=FFfP0RjX9W3FRFmgDqWs7JqOYvQ@mail.gmail.com>
Subject: Re: [PATCH] strcpy.3: simplify stpcpy().
To: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ah, no, stpcpy() returns a pointer to the NUL, but mempcpy() returns a
pointer _past_ the last copied byte. so if you add the cast and the
subtraction to fix that, this is probably worse than what's already
checked in...

On Wed, Jul 23, 2025 at 12:26=E2=80=AFPM enh <enh@google.com> wrote:
>
> ---
>  man/man3/strcpy.3 | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)

