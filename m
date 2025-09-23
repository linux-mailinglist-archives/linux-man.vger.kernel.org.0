Return-Path: <linux-man+bounces-3947-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CBEB94449
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 07:02:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E523C2A7B38
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 05:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC0C2594B9;
	Tue, 23 Sep 2025 05:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ko/hULtT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4BC4266584
	for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 05:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758603758; cv=none; b=q/RwxMevfmOyKEFGtYsDOYKY2F29DOuwmsSauTN5qRPX3tZY8blxVnhROgmQUf641ANEzumWTxTaOA0P0erdZjJjco33JDo/ngi1zFRLZSAtW1SgtPCEVV8HCXvK0dmtkyYDxP7BD7BPeVIk+gZV9lcTxJwQvKbIw8SQCmVMvlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758603758; c=relaxed/simple;
	bh=br5b5VigKLiWffbnT91+bSjiwBbq+GT3XTpSY38fb6Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bs2KfUcNT3jwI4T4coJFzMwCC8EidtYzt3qJfSSOXVTDvmQtIfVVtnkdh1xS3FU3RgCn0yL23sonF1JDCTvboJhkDokqjPSveg0vYU75f1cRNYZ2m3xH8zxOAO2dHrcd19t7CQMMsR9uFeSOpxSy9fbyYc6/fCUvh2mSs8B3DLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ko/hULtT; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-ea5c9dcba4bso3240386276.3
        for <linux-man@vger.kernel.org>; Mon, 22 Sep 2025 22:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758603756; x=1759208556; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BhS2QBzRNP5lZnYkBBRmOyDX2SGB1d5O/y5DzZn8GrU=;
        b=ko/hULtT9c6rG5yiKmRQcnn15Pp/2lwBfcb9LWq8TMER7zFSpQkfN4UoErkWmSGyJY
         M5lZYPlK+xx49AT6fwyFt9p4N11SYpjGj+rYAFUIDBhAnDcz5j+beKDfMz5j0pqH8JKB
         P3BOwlO9eCEW4RkADumtJebN2ATJvQxu9hmi78JJ1dw9IVg+/wC5M+8jcvfF2khZNeKy
         URkQTznTR9qg8cIZcGALP2zODB2M/mAYYTQgcTDTLwsDCUq6ZvEXH9kg016thDE6iLi5
         OayDf1WqTObD02tWsxC0qneiMpqbKePl/x+5sPmZJ+4aqyXJ1AfpuO0yedVDWgca1TEV
         1tYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758603756; x=1759208556;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BhS2QBzRNP5lZnYkBBRmOyDX2SGB1d5O/y5DzZn8GrU=;
        b=asOb6nm5omWr/K8TfOcikQjNKvO8K5EQxqGdlSg8lrtSHXY90/VkZg0MV9fqD0IUnH
         OJyQ1jD7xav/IXXCHs6L32Cfmkc7giFg5kKfsTci9fbiCBvc5NvOc3D60hxHAy7v9i5Y
         I61Y/jg+C3SnqZLd/YcQgCUiKzqZKp2ISKfs3mWxWpf4En27oRUuqS23xw+4SZ4h/so6
         4zAtbk1OqxS7lbN4v22bIITATAUYSaD9DM8SwC+3a+jTF0iDgoifP+S+xU8DWZZpfWhB
         sTy5KXmfgN17Xk7013mgOPpA/PCVzxgw0u6ZdrE6BAacD5+EDAChJXefmuhLNZqPK690
         vOPQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8pYsRl93V7g/rV3yjoR/XEo5sBahdTaoD6yGXvIKfguZVglkLWYSo2FNkUfj3VV96cKvPdKmoEac=@vger.kernel.org
X-Gm-Message-State: AOJu0YzQA/AmekK6zoLCz8flyvNk7/4My9joqxIzrlJ0YTDyM0LiqX+m
	fW7mBNVXN1e0bqoGXiuxJVe+culia+dcq9nVTw97Q6NKqCh2S9wwM+XpdFaJ5g==
X-Gm-Gg: ASbGnct8hoCQe3pzvFjup0rvF0eIeW15PlmGPE63TmsoBC/kgzrFPH+ig15iNXQqap7
	diVIShYMZWLwQ+xMBTmbVpyMZoWYa0n2DDx4dKJTUkuONNV1EMcisjbQNpmvC/i9ZWGf2kpHknQ
	FUL5hFvVN+6b0Cno7Mn9Fx+jrIecylE+jog4HxpV+Tg0NLvlXWieuSjCVN4QskndhyS09L9010s
	SORp2KuJCe6KxjGgNNdW4wQd8mW6d0lknQbIPovkLvCQgeLt8y50Q3wO6rH2ObBfb5oXz9mUdv+
	/q9KoBU86V4vr39HBOZBKp4g8vyashs5bxcTgCS9hhVZE3fLtFUvhPcDNTajRVvJGTpPdO+7CZz
	/gA8bZAq+fuDQ
X-Google-Smtp-Source: AGHT+IHpWpQiltP7TMl6r6ka5VCF6SLzA7TuPDrABIOfhYHG/v1JJXBB3qG4Y7O7VT8/ufT7qXBPKw==
X-Received: by 2002:a05:6902:288c:b0:eac:c616:41b7 with SMTP id 3f1490d57ef6-eb32e72d5e8mr1199951276.19.1758603755743;
        Mon, 22 Sep 2025 22:02:35 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-ea5ce854219sm4708351276.16.2025.09.22.22.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 22:02:34 -0700 (PDT)
Date: Tue, 23 Sep 2025 00:02:31 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Kele Huang <kele@cs.columbia.edu>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 6/6] man/man2/fanotify_mark.2: grfix
Message-ID: <20250923050231.3amllj7nlhh55mfd@illithid>
References: <20250922035934.446271-1-kele@cs.columbia.edu>
 <20250922035934.446271-7-kele@cs.columbia.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jxfvdt733kpaxodr"
Content-Disposition: inline
In-Reply-To: <20250922035934.446271-7-kele@cs.columbia.edu>


--jxfvdt733kpaxodr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 6/6] man/man2/fanotify_mark.2: grfix
MIME-Version: 1.0

Hi Kele,

At 2025-09-21T23:59:34-0400, Kele Huang wrote:
[...]
> -fanotify_mark \- add, remove, or modify an fanotify mark on a filesystem
> +fanotify_mark \- add, remove, or modify a fanotify mark on a filesystem
[...]
> -adds, removes, or modifies an fanotify mark on a filesystem object.
> +adds, removes, or modifies a fanotify mark on a filesystem object.
[...]
> -was not an fanotify file descriptor.
> +was not a fanotify file descriptor.
[...]
> -This error can be returned only with an fanotify group that identifies
> +This error can be returned only with a fanotify group that identifies
[...]
> -This error can be returned only with an fanotify group that identifies
> +This error can be returned only with a fanotify group that identifies
[...]
> -This error can be returned only with an fanotify group that identifies
> +This error can be returned only with a fanotify group that identifies

The above revisions' correctness depends on how "fanotify" is
idiomatically pronounced.  I checked, and Amir Golstein pronounces it
"F. A. notify".

https://youtu.be/PNZmegl63hM?t=94

He seems to be an authoritative voice; I therefore think the foregoing
revisions are incorrect.

[...]
>  This error also occurs when trying to remove a mark from an object
> -which is not marked.
> +that is not marked.

Excellent catch!

https://owl.purdue.edu/owl/general_writing/grammar/that_vs_which.html

Regards,
Branden

--jxfvdt733kpaxodr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjSKeAACgkQ0Z6cfXEm
bc6/3A//UsWjpihho7vVfU7folIj3zKId8rkVqqWFskwyIOlqT3rVpK0sPrbxdn6
oiuW2IF/YDrCGAFxzE7tv5sY0plR2L2DOVFM4MWxe4uGQ0ASJt2wML8tR5aT9ytV
CrqGeH47oXgfExehPvK5W9go2Wfq5myga+7+BDNRloqNkNIh1rmZbM/QuAR8jkSH
S4QQqnzi4u37TtHmAOAEh1AjHBEl+LuWgd/cgwW10+wMTWS3LOiGrQ/h6vzk9Vlr
1fISMxpWKqATfC9o/0YzYJ7bJztFdMjDwgh2k56js8Ay6uBPQ5FSU8huD+qX+/eB
CEPt9fSLVOO21DFrCzdDkghs/Tw44JE46M5CMcdUVXrRTcjN2dhzHivg563TfFfX
hSrSqdHefgZEj5jumuysLz3f5D+fv7k7ukKQbhZeSCvTm5QwaPk4mSdSiXAK5RG9
HabgrvEgQ3ZjIVapQ8REVsVWJAu+KKYYXMBX+oHo5gReIheNIAuGah0tSgwJGBCd
zF0v7muomupmPMBDp5hLiS7W8/qfORgcvmWOeGv2DYmYMHkeUmKESQHGGv8x3TMP
64gPuq79wD7GSbp5znQttGlNZEOH2Ih5wYr1ngCg992sbMwizPjqtIQueqfXz5Hn
1u6hjxVjZoGoy3iqWGL2yDZGny+D8flg7AGCWWU53vTm8AnTrUw=
=UqLY
-----END PGP SIGNATURE-----

--jxfvdt733kpaxodr--

