Return-Path: <linux-man+bounces-5463-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFViOn3K/GlhTwAAu9opvQ
	(envelope-from <linux-man+bounces-5463-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 19:23:09 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 690244ECD1A
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 19:23:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3D8EE30164BE
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 17:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 929A03793CD;
	Thu,  7 May 2026 17:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="fNO9/gK2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5082E1F02
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 17:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778174585; cv=pass; b=knG/5TANhVrArGVuxf5CEKJo4ZgOkerUB4VeZUIlK3teWHr5pFcF0IhwlC2WIxmQYNWk29RVsoc5BC4paqNpyD9idKhK+tvhPDvC2xsrx0rZECLA/6KF5JRHw8W6NMIS+O4YavrQANVYubAj+xFHuoorhAwGQHo/EQodjGHbCX0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778174585; c=relaxed/simple;
	bh=Eg9Fxh+VHcqS3x0ixCXioDDXrG7V8urNjpIqlU1EUP0=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=mLEz9z4bKDGrUQufDT643uAWkioCBcsU11XVwF3iRGl9QlqVMU2oPjEtgpIUu7Ij/LaTcetxZ5o5uJCZWxtDKfe7++oJyl3e+9Fg4T+HJ4iWLkQZKb86S/KrehuHc8B2WUZUxf/zt0qfGMw/JqTtYZNhLY7QH8zZvegHa5hm2wM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=fNO9/gK2; arc=pass smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5a860667fabso1042420e87.0
        for <linux-man@vger.kernel.org>; Thu, 07 May 2026 10:23:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778174582; cv=none;
        d=google.com; s=arc-20240605;
        b=gVTVj97jTOHTNRtD+eko4M1il61soCZM4jkh/Ih9zLzyPqRU7kQ+tFlAw0t8LWjzMy
         zTKvh91B/EpazS71w3fiIJinqtVXsSSPukrJ7FK6hrmyKYnblK1jy6c3CghBvESf6G+Y
         iZ2XTi2G/oYGl9dyES9WDYF7jRERwU/GJwWfFI7shfRgi1NfUTHq4Xmh3LouhAkGbe1S
         G4jInbtYIKrgTfAxMkWiXU/TNpRrXeQ0woXLUN9m9t2hWwmRqQA0Y1NdTArXzhJzbYi0
         4Qftc2cb4LLTIaY/XfFCB59jdtzh0S8NUnF+P+SawZYEvN+GfPbADU+4CA0dr05yRPll
         lJXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Eg9Fxh+VHcqS3x0ixCXioDDXrG7V8urNjpIqlU1EUP0=;
        fh=JLs3X17LX38q8J3KB3kPXEvIV3DdPs5leVEJ9b+is9g=;
        b=SfSDpmPq2QRWj1/Akfty0cxgvKy3O0wm05NHSlLCdZLquB2mrdJglwUsLiy+J8tBgf
         67YRAMYTuRFn0QtTfhpztqith3k43IBZl59wMjiWvPgeItL+rDlSgztIhsQJsaAvq/Gt
         WE2Wm2XKThQQKdkxHxV2UGggMsAfACDWQDZwIQGwV6uOyFltWNEkhm4PN66sAKrYALb8
         eObm5ifbu4fJ/mBUrGfHKWmDkzowCuZNuyFyX4uxktiJVrXh2WnvnZgF+b3AQTwcQ21R
         jVSZ+Tv6fXl2zWAe6IVnv0IHYz9pASmTyuPfOob6T+yMXkTix5vNZGD9Fcrcio/ZRqg2
         yYdw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1778174582; x=1778779382; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Eg9Fxh+VHcqS3x0ixCXioDDXrG7V8urNjpIqlU1EUP0=;
        b=fNO9/gK22ZSUyg+EgWr6ktNDKiatV+EfQCmMf/ZwFTk23bEeChgXY/7483Ceq7AlP8
         g6gTr5nXOFPBhJF3dFC1cy4Il0lKVBoTR9a6uSNiR35ghOafNY51fJIEZvsfceYmK8gQ
         WPbzCKa2hpSVuYTJKHmu7PYZa6f3ZbqSFw9pyXE5f+unydtA28ARvroApjGAeE8lR7Ky
         XpRbQtTc1SvFJeHo1rYw3FxKalRkMj1bs7a8PeNLO6UkFkWwMl216HOFg2WUgpWdtsaw
         gEFTjCWOGdWkk2Ebe3YdUC/M2I598RDrSxD8i+tEyi40w+ks7BMMiZlQ67Agoqh2LDSQ
         b/vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778174582; x=1778779382;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Eg9Fxh+VHcqS3x0ixCXioDDXrG7V8urNjpIqlU1EUP0=;
        b=W9Pg7kA44hNTa9V6WBWLkJR5C8Yv7X0Z2ZkwioJh12i5F9I0bF8Dc4KT4xXzePaS6C
         pc8nWMd3A8ofe7XjxR2ekmtKKW18yDcjlPTwmRq5JM38WcgGlE5s3Zgs2VT045NlxJdr
         9ZIchHC0sTwV7q0b5mSfXwKbUbevX7ASp83fqedJm3WafKrzL5Dk1fDxePrR/q02BzPv
         p8ufvckhy5xBBx6UU61Kox3YHb8T6dgT4fc+vOHomlXNSFoSLqTNp2JOO7Xaow8rT43t
         Z1v5mI9Pl9d7e/gcmd5atUB/KeQdb81NdRX3Fah30Tmb30gf0SJOLlMsFNBz3To6EY+F
         N6Mw==
X-Gm-Message-State: AOJu0YzzFOlwp5mVRhTfOvve4BaFTe8wdpiSVEwxlJzXdQqfbPKnOllM
	rQkPACF4R4MMuRHjiI88fHI2j3KO8ipLUvOXZ7eAGu2adh8awMDXGSOsTsb2lviT3QiCaSnG9hi
	yn6j6zQk3ruXYTbabVjSeXO3Ugm7OpCEehhaCVpm88ScpIv1/ER/zMpo=
X-Gm-Gg: AeBDiesFATpoR/xLw6I/JCxYcYXhcbSRLBKSqErpW8/+OI0qk5uKfSkf1g7VY08w2Lu
	04ljotXMHYw9VeElujupKBuX442/S2MpC+oGbOHXAon+zHkq4sUfQ7eN2juvdaa7IlwlmUeO94T
	TYTc7YYlKS1iElixx7jwaIX5HgaH61fw3evKm7xzcy/OTHUNTJLmWZgXnFU6AfqZAEViEDmjvSC
	fzkV6tOy7g9xwskMKKdJmW+49L9d/A9EHlMnfPy6bkeOnew/hT2ljOtPJxrfU16UJbVIsqjZzaE
	PegJufA0Fg==
X-Received: by 2002:a05:6512:b8b:b0:5a8:7f4a:dc65 with SMTP id
 2adb3069b0e04-5a887adf444mr3502695e87.12.1778174581241; Thu, 07 May 2026
 10:23:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Date: Thu, 7 May 2026 13:22:44 -0400
X-Gm-Features: AVHnY4LTJ0TYVyCc4-Wu0chBVNOoydw2H7gYNGQPUsakn3_10F-MPDjroW74vIE
Message-ID: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
Subject: mkstemp(3)
To: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 690244ECD1A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[bounces-5463-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[douglas.mcilroy@dartmouth.edu,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,dartmouth.edu:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

The synopses of mkstemp(3) that I have seen, e.g. in ubuntu 13.3.0,
say incorrectly that it is declared in <stdlib.h>. It is not in gcc's
<stdlib.h>, and should not be, because stdlib.h is part of the C
standard and mkstemp is a construct of Unix, not C. (It returns a file
descriptor.)

Doug McIlroy

