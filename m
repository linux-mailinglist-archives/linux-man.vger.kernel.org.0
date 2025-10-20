Return-Path: <linux-man+bounces-4179-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF070BF0245
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 11:21:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84445188BA3C
	for <lists+linux-man@lfdr.de>; Mon, 20 Oct 2025 09:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 112472F5499;
	Mon, 20 Oct 2025 09:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hgrobfGJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455922F1FCD
	for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 09:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760952084; cv=none; b=ihFwEuFgjDbbiAm88Yjyet2FFgwKMPQz2mHgW/HJWPcxUsVFeDzVKASz8MyGVqVcaeD5gYmKRs+3HGEO1KxCelXMBnp6xxOStrwhsoC5daYbWRWUkxsRrYu4Zc/QxxDEFsyKx+AGNc/95GsLhuZX3g07ASm+UYD61L+50AW1i4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760952084; c=relaxed/simple;
	bh=Wh6rkJ/lywZpPAyG7+bk3QsIFJDZkLZJ2WYyLXpKICg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LAx5/DYPcGLsMVXFrc9NMoGbYLDUQugZUC++1bE6c1cgDMdDGcDxlXhC4MdMM1YXWpF7jpRVJDP8q1Whk2Tam+uUSn6d2969wnUhc2bl+y1zovtL/rI92vEXHhLTXKWYJ9mdcrvqpbZGrMkNaMMX7y6ODG6OviqQzdPRzdCqogU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hgrobfGJ; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-88fca7a60cfso761369385a.2
        for <linux-man@vger.kernel.org>; Mon, 20 Oct 2025 02:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760952081; x=1761556881; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jhsap4W2Q1nXpHRNl3nfKrR/Udrf36a6PgrYzUcPcHY=;
        b=hgrobfGJsTwb5+nPEkakTPC6SxxKVhyoEUa4vrqMFXrRiSWcaqzyu4DVe9sqkYXTJs
         wOu1XzW4sbCDAs5iurIPaCom+HKokxcCIdx6FdYxQ2bR1PUUQXx54opAw8bwe6GFwIGG
         HTxip0WvB/w4+hJsfBV9bkeBjF2qNxJ9E9WZS+BE9mcVAWPMF9Zt62+l+9sKiKvW/uhH
         nGX+67D/GzSXhnKtXV5BnksNeUanrZa0XOCTgLdExppXvhZ3EMybKau1U27XR464adJP
         tKkmQUIYBL2qo5/uZ5Kb3lXrIQhJa4UEH2lAQsmaCOsDc9OqSzoDMosLcjG3Jhr+CpsT
         hkgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760952081; x=1761556881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jhsap4W2Q1nXpHRNl3nfKrR/Udrf36a6PgrYzUcPcHY=;
        b=wepvohUNdbhZMphbCzySH+riCdRwH+nQhzTPgsgFeHV0Y9gMD6Por/bpmFV2mXG9F/
         TQ+J4RQdQpHMRNWEnlBT7Ut5BAP7pilpOBjGa/X4FfHfb8H0jTyX0pL5T/EF/t+hJLar
         HF22xtrcBeYlY6S9+tSSJ50wZuCzHS9yeTsFnoiasLmgB27l0pp5lUjo1VOaYltYNwdf
         GhcEct7nSMzokrM7yCDYuQh66ZfRIYapG7JJElfX3HgOtu4hwmV+5cC7tczVMWuwuzVb
         ewtVdd+3JSUdN/ajWh6kdmzDwbaZeVTQuPLwjiTNK4D1YcbcQDUjmTT5FBVF7RA5g+CZ
         DBBw==
X-Gm-Message-State: AOJu0YxnI7QoIECRucGEFTPmHQD1N6PP4DImLLAV3Tvr+dei4LHqwToh
	TcsME8jp1VZdYxAXbvL2qY70WdIm0Hq57y0dlGDaopI6B+NzZmyeFFJNJwHlomXe2UtsF9omFf3
	6fqc0mT5exASyikk4zzATraAFLWoE7d9uMuyb
X-Gm-Gg: ASbGncvEBYp9bWF5eY08J9clOncaBsXH5HF9nx09Niv0WCEKS0HGJDEG9Z90ZK3YmXQ
	XDMWiBp033HyYj4hPHPqgoLXfHuRAZabKy8Ktp3u+0y+DTfybyI6rRtV9G7K64o2lc773m7+Lwd
	7n9pJgEa0OF/rodcnlSCN71WkmG00okwwTTAStKQw0ci4bkD1s7V9GTSw0L1mshFxyGa2UBNDVY
	txDNJDN/nllHCLcqABSNFpTaSJMKnUVgszzGmHGk0tLr4GUVC6YnRAGXLwXScaOsAKX7d5q4HBQ
	LfZb/Tw5z4JVFAj3HUW4ewKBi0g=
X-Google-Smtp-Source: AGHT+IHuzcNnYJ8sEResC5r6QQ8A8TmMFWo612XBeVXaB1JoOV2S60FTrxWC4J0QeoAcBBPmPjaPJotfU85tymTVmJ8=
X-Received: by 2002:a05:620a:2550:b0:88d:125f:8b5c with SMTP id
 af79cd13be357-890707f72d6mr1596778085a.88.1760952080649; Mon, 20 Oct 2025
 02:21:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017123110.321638-1-bhe@redhat.com>
In-Reply-To: <20251017123110.321638-1-bhe@redhat.com>
From: Barry Song <21cnbao@gmail.com>
Date: Mon, 20 Oct 2025 17:21:08 +0800
X-Gm-Features: AS18NWAmeMDxwJ86_infRJjF7dQMYJfcSY3dsCJDMnsXgqvfhnhG_qb6tyYfPvM
Message-ID: <CAGsJ_4wqvrMw0rwDvciVN3JiQ=_5+30HpWNFz2pMHWNQBvDrwg@mail.gmail.com>
Subject: Re: [PATCH v2] iman/man2/swapon.2: update priority section
To: Baoquan He <bhe@redhat.com>
Cc: linux-man@vger.kernel.org, chrisl@kernel.org, alx@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 20, 2025 at 6:56=E2=80=AFAM Baoquan He <bhe@redhat.com> wrote:
>
> This update the description about default priority value which is
> changed in kernel.

Thanks for sending this. Would it be possible to include a reference to
the related commit =E2=80=94 for example, at least the commit subject? Also=
,
does the man page prefer using a link to the kernel patchset?

>
> Link: https://lore.kernel.org/all/20251011081624.224202-1-bhe@redhat.com/
> Signed-off-by: Baoquan He <bhe@redhat.com>
> Cc: chrisl@kernel.org
> Cc: baohua@kernel.org
> Cc: alx@kernel.org
> ---
>  man/man2/swapon.2 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
> index df5e8d8c7ec6..20e213827733 100644
> --- a/man/man2/swapon.2
> +++ b/man/man2/swapon.2
> @@ -60,9 +60,8 @@ These functions may be used only by a privileged proces=
s (one having the
>  capability).
>  .SS Priority
>  Each swap area has a priority, either high or low.
> -The default priority is low.
> -Within the low-priority areas,
> -newer areas are even lower priority than older areas.
> +The default priority is the lowest,
> +and all default areas share the same priority value, -1.

Not sure what =E2=80=9Cdefault areas=E2=80=9D means.
maybe just the below?
"
Areas that are not assigned a priority will receive the default priority of=
 -1.
"

>  .P
>  All priorities set with
>  .I swapflags
> --
> 2.41.0
>

Thanks
Barry

