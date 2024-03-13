Return-Path: <linux-man+bounces-576-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5159787A4AD
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 10:12:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E55651F22720
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 09:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 117341B298;
	Wed, 13 Mar 2024 09:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="x6iMaiYe"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f73.google.com (mail-ej1-f73.google.com [209.85.218.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B6020B02
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 09:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710321138; cv=none; b=Kl0aQqS4ns7zV4SZpRGAly77x3x4VdjzypUoOOB7qWx8X04Ld/6k5oZuMCw1WfbNPNM1oOz1tuJFxneNkkDZxgH8Tbegq0dBJBxlJV7wkuVV+53JvXoxksbh369sqsi4+DUeOlYnUbnnYHqouAI7BiQHp5SBQKCP05veLstxAkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710321138; c=relaxed/simple;
	bh=atb28jsk0zwDzepySnv+HPXNN7xOCEZSG3NOddiWfaA=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=pdo3DL9vTq75bl7kKOgnbSlF/kr6Aw3lcDCilXy9yOKMMD9KDkbcjSzcrqPq3zT8PtnCraka8NTYtOwSdbg1A9Hj3jBGipmUZ8sH6hVtOTko/Q5EJ/ygPsXAoliZkK96f4owNX+VCsllY5S5//FxTxqmurM66Lu9p1I2qp3a0Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=x6iMaiYe; arc=none smtp.client-ip=209.85.218.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f73.google.com with SMTP id a640c23a62f3a-a45acc7f07cso48139166b.2
        for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 02:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1710321135; x=1710925935; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XYYdSSwz62MTYY9Kk0SZL20jRqLUxIzQjMv5yU3mNeo=;
        b=x6iMaiYe9Rjxv+/fsEg5kjtWsOJcZJ1UJIUPLRtYmqKC0gnimN2lhLsxXJzpSW959R
         T/gibftkAuZMH/F9PHvMtW/ysrzlQcLYNiW2wV0Qc0VxHHoL5KW4peaaCd9kHz6Dr4r7
         oUpAu1adEYgYUSxKeaiQP8Am7T+bxRpFPGkjvmBfuJd9xIylBuXy+jv+4y86kBmynm6N
         eeHxPMuvhDFuqafd7g1lMnSJlyEbsZH+BDkE9AJKKBT7m++EH6I8YlKL6X6tkjw0xAw9
         68n2d2i1cQHF8t7Ii4Z27PHMift6HKxCUEADLdFBhwB1mox5pMry2KhnijGV2+LDHa8w
         owIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710321135; x=1710925935;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XYYdSSwz62MTYY9Kk0SZL20jRqLUxIzQjMv5yU3mNeo=;
        b=d6VvxYSFOuog8Zl3PFWyipjzYwC6eHC2nvpwNBxtJN4+rO27VpyCYA+44CgqzS7T+Q
         pVJNhvIGyngUt6ApCDmK91hMJFWVDqTS1L1doQfi6qnNFcsxjgHFkgK3Nem44FTXrpAc
         N9qAwoVXTOZwtDeHjvM+1ovC1zE67uwuEIUElw+NFZWYzZZhVf9LLuy0eE2Ghkkty81w
         ESt+zsOzhsCw+fwEYTw+FSQzIVJPn4f21xf+C6dsUIfUkXV/2Wrvu1s9vAvQqSq/++rX
         qwFuZHmrBWL6JBwxN+N3xdYIvA8bGXni+05j8xMvvVT5MfqbcezhTH3Ojf2TmoybvQBI
         YTrg==
X-Gm-Message-State: AOJu0Yxxlb724RENUvmpFsdx3oAZA5n7xTcQvuPHwMn1Cio3505szb4D
	DZ4xLk0dSD54oVBtBt+YgnENsMB+xnt5M72qDxrVinenj5A2XTWIGcEgVULsiDRqup38TSSkY6x
	DNA==
X-Google-Smtp-Source: AGHT+IGfsOPOkzcv5yghp9r4GYa1pcXimYkAhP2X9MFQw1PBhD7yBeGSAC7mcwo1+Lo4IyOu2mzB1+QDM9o=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a17:907:a4cb:b0:a45:ae8e:1c3 with SMTP id
 vq11-20020a170907a4cb00b00a45ae8e01c3mr29556ejc.1.1710321135281; Wed, 13 Mar
 2024 02:12:15 -0700 (PDT)
Date: Wed, 13 Mar 2024 10:12:13 +0100
In-Reply-To: <20240312151513.9718-1-mic@digikod.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240312151513.9718-1-mic@digikod.net>
Message-ID: <ZfFt7VRWl1PBrXYQ@google.com>
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested sandboxes
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 12, 2024 at 04:15:13PM +0100, Micka=C3=ABl Sala=C3=BCn wrote:
> This limit was updated and backported with commit 75c542d6c6cc
> ("landlock: Reduce the maximum number of layers to 16") to all supported
> Linux versions.
>=20
> Cc: Alejandro Colomar <alx@kernel.org>
> Cc: G=C3=BCnther Noack <gnoack@google.com>
> Signed-off-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> ---
>  man2/landlock_restrict_self.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/landlock_restrict_self.2 b/man2/landlock_restrict_self.=
2
> index 43f15c932a83..fb7e48234098 100644
> --- a/man2/landlock_restrict_self.2
> +++ b/man2/landlock_restrict_self.2
> @@ -102,7 +102,7 @@ in its user namespace.
>  .TP
>  .B E2BIG
>  The maximum number of composed rulesets is reached for the calling threa=
d.
> -This limit is currently 64.
> +This limit is currently 16.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> --=20
> 2.44.0
>=20

Of course, I meant to write:

Reviewed-by: G=C3=BCnther Noack <gnoack@google.com>

(I need a coffee)

