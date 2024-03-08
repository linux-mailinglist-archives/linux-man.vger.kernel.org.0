Return-Path: <linux-man+bounces-559-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A440A875D87
	for <lists+linux-man@lfdr.de>; Fri,  8 Mar 2024 06:23:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A291282EAA
	for <lists+linux-man@lfdr.de>; Fri,  8 Mar 2024 05:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8DE92E647;
	Fri,  8 Mar 2024 05:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GUd5mzxS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8982C1A0
	for <linux-man@vger.kernel.org>; Fri,  8 Mar 2024 05:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709875408; cv=none; b=F8fyhMeV2UDNfH5FYjyOR2poND1krWu5ETMZ52EgdLvxQ8HrAcnrnH+5HayyKvDdXvixhhwXEJQbGrbpb79wwZDN2jWVo5GLsILj5vheVQc8q8QZ9TO2KHvhoQe3mvWAU/CuyoFN/W8mPZf1P63mgAY62ZJzWU53eTpqRtQQ26s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709875408; c=relaxed/simple;
	bh=j60RqTTxwiEcLgzuDkCUlWgIRp+xEly2AF6IDnr0uj4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=glcBpkYk3W51NIiFkHTCrIN+fyc1sXdfNnH2sGnthrkODlJtQESOuNTfsTFRjm5oMIWyrhDk4g+/ZyEEd9+9VHFPiHlSq+hsL7PQyVIhAyDVi6h6WBczLhBQHXv02LaAZkw/37svjNea5bO+iNg49mNnUm0463R8bjvLejdAIBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GUd5mzxS; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-513382f40e9so2053625e87.2
        for <linux-man@vger.kernel.org>; Thu, 07 Mar 2024 21:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709875405; x=1710480205; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j60RqTTxwiEcLgzuDkCUlWgIRp+xEly2AF6IDnr0uj4=;
        b=GUd5mzxSvAGlwJIR3YhFTDG3/B1h0F+xIImmElJM6jlRMm92XyvYQjBsE4z2XaUmrP
         sv3jIYkAqyysW3rQIsjVcauxrqqSLCJZ0KG6n8up/Cf3Z9hMBspc1e/eNGoGVt/aWAG1
         8bujIrRcabQXmsgZLFVzbihohLFMpmY10pycxBFyiFgKJl+Ezcrvy4zIKujjrrfkLxY1
         1UoTYkRhpEKgRwomexAZ8QJiWmD3uPQJHg7Isfu/fQ3+2aEsQHQIVhgspMezIW4Nopiy
         iZSDnvAdBKz1v60tQDacq/e4vg7LYslxtHVxK+Zq6v32EqrXF4ulSb+5JuSOoZa0J56w
         PVow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709875405; x=1710480205;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j60RqTTxwiEcLgzuDkCUlWgIRp+xEly2AF6IDnr0uj4=;
        b=o1vRqlWEdtvDzkVLBiZGeH94wLcj0RA4CJZAPFk/R0wCUuqDIQLwyW8HTs/5VW42EF
         /CCzU21ny0QoXyVoQIufxzy2RLCrma3mOzCfokrmCJH0c454ANMPu01V0c7IquqKFl6v
         iL27GijSknVHKC8VvFTHN4/P0HXPWahRzSMuJEewrY+ZRTCfoAzr0QaMnHK+gZAXgiID
         RJAg5jkbGwxCx/DCXZ3KDFjJx5ELhNV+gniotAvSUdW3AvGNUGT2cH936GYidkThaTat
         z/ijhaIHktv2axP/KzThi18ZZNxY486fVOX6ncHz2BzGYuknrd/6kOhNlzP16OQmLZo1
         IS7A==
X-Gm-Message-State: AOJu0YztcvzmM2eDzQWWkaRdvBA6KQzqRMpe08tMPqAjkHpsPJ8YksEi
	5ynydKHFFCq3WQetndTZeRG7yDgNKmPsxzlHZgBrYMUpgd1rdJDOac8JmxUa
X-Google-Smtp-Source: AGHT+IHf3FvLig33K4uExLx/tyvejebjbhHtfqnBPmQB9mZ9ok5SLwksbUTIz8vImFr4yS679VSPSA==
X-Received: by 2002:a05:6512:4892:b0:513:5c68:9891 with SMTP id eq18-20020a056512489200b005135c689891mr2538098lfb.44.1709875404588;
        Thu, 07 Mar 2024 21:23:24 -0800 (PST)
Received: from dj3ntoo (30.sub-97-147-14.myvzw.com. [97.147.14.30])
        by smtp.gmail.com with ESMTPSA id o4-20020a17090611c400b00a458d85f9d9sm4148939eja.142.2024.03.07.21.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 21:23:23 -0800 (PST)
Date: Thu, 7 Mar 2024 23:23:18 -0600
From: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>
Subject: Re: [PATCH] TIMESPEC_TO_TIMEVAL.3, TIMEVAL_TO_TIMESPEC.3: Document
 these macros
Message-ID: <ZeqgxrRvbjOTL_dF@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>
References: <20240307022451.91077-1-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kUJfYDMWz/7Vt+Xa"
Content-Disposition: inline
In-Reply-To: <20240307022451.91077-1-alx@kernel.org>


--kUJfYDMWz/7Vt+Xa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 07, 2024 at 03:25:01 +0100, Alejandro Colomar wrote:
> Reported-by: Guillem Jover <guillem@hadrons.org>
> Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>

Looks OK to me.

Reviewed-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>

- Oskari

--kUJfYDMWz/7Vt+Xa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZeqgwgAKCRCp8he9GGIf
EZw8AQCdWYdmt0zDOie+5tVM9CX+Mee0oRNPtOHYh2K4UlE+YgD+JqQlp6yHvFnz
saZhyPCmJczBw1iJLx9GA/lZ1n2xEQM=
=KAz8
-----END PGP SIGNATURE-----

--kUJfYDMWz/7Vt+Xa--

