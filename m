Return-Path: <linux-man+bounces-1447-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD0792FB86
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 15:35:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9775C1F21D20
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 13:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4456916F849;
	Fri, 12 Jul 2024 13:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="eMAvySks"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE0914265F
	for <linux-man@vger.kernel.org>; Fri, 12 Jul 2024 13:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720791343; cv=none; b=ouIQvynN5V5GIevTdxN9glyO4b6NUK+34SXipSBESJPD7dHRot3jH9NJ+nPnXxZCumkn17+e/HQademI00hGAZUONn0tERQOIkZlbYDsGsnZF/pTMDr/MkRK7Ue+5rbv00L6YV6ZhN5+KsO6NRBtPJNh3+B/WnbK9VvZVaHdIHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720791343; c=relaxed/simple;
	bh=fss1gxwB4P1lk22zXxnwlw8cYsg4hk0ErlcUO8mh63E=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=iBGUd9k9mi89+y8PnYbD46XiuePCjeTvf6Q1vIWo3JdYGv+OJirrunraH/OK+gl/VJpMXdvGQhOWE2+xTXusuX/7r+BntG1w2GhbnMA5ch5a730NLgTDOzM/LQItSw4eeDkTj0tXPHFVabOL8Kxqo7a9zIPv2xKrqrKV/L3aBf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=eMAvySks; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e02b5792baaso3738296276.2
        for <linux-man@vger.kernel.org>; Fri, 12 Jul 2024 06:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720791340; x=1721396140; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w2HDQ4g5m5MzeG3csQuOLcO9IM+mYhsymW8yy7VBih8=;
        b=eMAvySksFIzM/ocbdht7fh4/XyusiwLVeP+FSMASOTlKTUf5rIcYICCuI2DwMXCRIn
         jwCt8+Ggh1obvITDTvOcL/nU1QiCqWHQu5GUCmnvO6pguW9YrwBETeYLYJgGN01pG/R0
         +PtliZVyLjL2wzZ3M94EExYf0YUsjfo1V34G41xgzsKEJ8IybTxMqz/+ii6XLGlZ9RLI
         qrrTsAfYftpQJ5bjtOK44LrKJxYL/UvumqYKo3WFRdWDNWQuRNCMSzsMg8C94GibP3xi
         8j+nqnXcnBkPof2y/EYSUEqjnVeKjmRlDJy1V0u3/Xo3JhBTf5zYmmPxhqQuDmguYVbh
         aJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720791340; x=1721396140;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w2HDQ4g5m5MzeG3csQuOLcO9IM+mYhsymW8yy7VBih8=;
        b=H7/2ucBGxNK8/bL4/oBfRp0RzHcrA1f0WzH27x2eDMD0ORyscVc2LPW7VKVmUrxEd5
         gVN9o33yKQgyfWJgX44o8A2Co8JhRY0sfMykjGIBhrvbanXDH3NBDSVMmkZS2pvEOtnb
         Gow2rO8ymCxR3R9fuCqEyVVQoS68ahlssEdldvQXqnCN8bOiwCl26fsXqJ5zMKEppwc9
         sxDWphAWLArU0qu8H7g44FuV3euHl3M73Wxo4PS9OyYRyXeu5MyQip5+HubCHzUsgUFI
         VSiiTnVBbzPAaHA5hvXewg01/TkVVZtQFToGp4XQzGpgnOxbOKSJ0lzhvltSaH+F7uvK
         JEpA==
X-Gm-Message-State: AOJu0YxwYYkGYpK6fxZ0msKOHGWULfZyNTkbN0TKBIR/Np+RNTW+djn8
	RNtUmL8s5h/I7nTZ7WrHijbnL8UHix+5R8cH5sdoe9Bd5PDzaJr3gBTuqOcA4GCzRIPXIx666PO
	+Qw==
X-Google-Smtp-Source: AGHT+IFha/nMDN6S/TwrONeF1FiJuEVfcvQp/s8VTraTpNboGlvtBVgktw3g1ryTJdUuBlyrptoB5xgP7UI=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:725:b0:dfa:849d:3a59 with SMTP id
 3f1490d57ef6-e041b143653mr879689276.13.1720791340711; Fri, 12 Jul 2024
 06:35:40 -0700 (PDT)
Date: Fri, 12 Jul 2024 15:35:38 +0200
In-Reply-To: <20240712130904.145010-1-pvorel@suse.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240712130904.145010-1-pvorel@suse.cz>
Message-ID: <ZpExKpaDvxj3tqBN@google.com>
Subject: Re: [PATCH 1/1] landlock: Mention -1 return code on failure
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	"=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@linux.microsoft.com>, 
	"=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, Alejandro Colomar <alx@kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 12, 2024 at 03:09:04PM +0200, Petr Vorel wrote:
> Mention -1 return code on failure for landlock_add_rule(),
> landlock_create_ruleset() and landlock_restrict_self().
>=20
> Although it's a common rule to return -1 on error, it's better to be
> explicit (as the other man pages are).
>=20
> Fixes: a01d04a69 ("landlock_add_rule.2: Document new syscall")
> Fixes: ca5163697 ("landlock_create_ruleset.2: Document new syscall")
> Fixes: 3f7e4f808 ("landlock_restrict_self.2: Document new syscall")
> Signed-off-by: Petr Vorel <pvorel@suse.cz>
> ---
> FYI we test return codes in LTP.
>=20
> https://lore.kernel.org/ltp/20240711-landlock-v3-0-c7b0e9edf9b0@suse.com/
> https://lore.kernel.org/ltp/20240711201306.98519-1-pvorel@suse.cz/

Thank you, Petr!  This looks good.
(Please apply Alejandro's rewording suggestion as well.)

Reviewed-by: G=C3=BCnther Noack <gnoack@google.com>

=E2=80=94G=C3=BCnther

