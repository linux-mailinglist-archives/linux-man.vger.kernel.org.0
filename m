Return-Path: <linux-man+bounces-5409-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dp1nLOZN7mnesAAAu9opvQ
	(envelope-from <linux-man+bounces-5409-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 19:39:50 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B6F46AB0A
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 19:39:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 205A83001A76
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 17:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6533257ACF;
	Sun, 26 Apr 2026 17:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XLiAYxUQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636E426AC3
	for <linux-man@vger.kernel.org>; Sun, 26 Apr 2026 17:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777225182; cv=pass; b=NNxW1iNx1ZvHyhIhJdjYBYacTJmoOSG2/TNaopurRs+Kdal7XEnUc3trnkH2kwbvbe/4HYbac2/LUmEdcb0OcpilmOm4VPzzOyxakHSaCTtnW/dpXuqHRrf+H3eyxFgg2LtuB5JQkh/JsPgC8TXtGChghb5TOXeS8LaFDqsJ/PE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777225182; c=relaxed/simple;
	bh=wIFE70eJU41s7n+dWf2ePWZIlqrws/5fmVd4NtK7Ih4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AjpD0X1csnBPaG0jS4jRAq/rQOgk8D4URUQZua6qOjg2sStM8EAzaY5dbdhgvCgE6cEID5lHyfcziiXmKFdSN7dW2WEXRA2qfAGufiXR6Hn0uwS40Ous4sod2VoUA3JlAGumilro/QqFWOZT0AZzQ9BdZ7RrXIepbQdE0zw5Nog=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XLiAYxUQ; arc=pass smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5674d8be45eso2860565e0c.1
        for <linux-man@vger.kernel.org>; Sun, 26 Apr 2026 10:39:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777225180; cv=none;
        d=google.com; s=arc-20240605;
        b=PF59xSHvL94u5/gylyyHVJHkApl0ZfdkSsAkLahtIV39W2ZyY7ZQRvhOGDX1mt68Ac
         eJIzgJ/ZDHE24BFrxCL4ofsY0gE3SKpmOWZzOOEl1SBnp0y3P6z8gSkB1WnZY/iV0clr
         XeMe5YRfHKnIWWpH8MWOK5A0JVzpTFwI/ljU7tP/5AkmkByQdlUkiH6uGVe4kpTGOqH4
         yXZnhL3Rkg7zPXXlnwjeNa5bujB2Q41LF6+1IedzMUMTHALfA6VTvlNN4ILPf8/tKbHF
         UgwoQi1Pkj0SOOJh3TBcyjyqOsLBKwuqi6KiV691qo5PwN7V4gl9k5Ww0ZqZtprTzZP+
         Ld8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zQAQEdt2ViaVKTnwK8DYapxp7NjJ7j/GFcD6p20YoTs=;
        fh=cXlsbC4aR9v5UZaEj5EmAyTHzc9v+PlVA11Y3ix8odI=;
        b=V9N73QbOpTKTtQE778XLVPuXDnuoN2IMQNCh0Bd0PvFxwun6OG/sgi7cfyQBaCYS4w
         LU0obvzFPgeRdBCwrUgAf9J56abAUnCqGGsaSHrBVGVO91TayykBCB0v7fz4L7YPyfwl
         6WkayW29CgGsdbjNmRhSVGlWF9kPkc4kWrIPp27xpOV1SJU2HTpk/O+O5NH4BlAcEpOY
         XrYP4e3/eePpxxm/oCskVDfqFmv70p42AlqWWEQ+Firv8mgv0pjfbICB2rzHqOVuoo4D
         eL8blBwkaLVnTZHjjhiQX5NTMEr9iS6s5jJgolILK/Rc3rDc1WVrqqNAl474QYmyPM8s
         fAIg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777225180; x=1777829980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zQAQEdt2ViaVKTnwK8DYapxp7NjJ7j/GFcD6p20YoTs=;
        b=XLiAYxUQBTkwlb6gd1AJJ3VxGZKoL91zoJlqBMOMpGVDznwfTL6VKgoh5ZKeJnZs/A
         OY0kaCbgtwnRo2m165e5h8oOYa7K15Kge6ZUrjfK3Fnao2TwLOnUTs7//maKsfMibavB
         ZHWzKwS+3kpQDL1F9cA0kWX+Qg/0P/TTuF140IGeHGHlKS23OlGGfnf8ul00hKV7/EYa
         wkdzlFc1FFSX+89yl3/P7YJpzXYIo2W3PSGNi+B4vJ8UQPgNxW6Y1L2Kkk6odTqe/KMU
         LQOxYjKKmLHIlrqF0aWd8EoLTer+H4zlyciqQDjKVbfbaiC1z5jH8P8x177/af4hv5X0
         zjpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777225180; x=1777829980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zQAQEdt2ViaVKTnwK8DYapxp7NjJ7j/GFcD6p20YoTs=;
        b=jLdmP4ZY1PwPlNJEFlb57WpVn1ZVu9+6bGKc+wQtVV3/MrVMSEQK8U+cmzUhuZm3cA
         I0685F2GS7kJ5/+/3TvEiHtYxfmn3UJuonXygCYKxEcRd00hI+NYdjjJ2xtve8xHJ85v
         dWQI+qRbMA9yR9jeg0ipF7uHsNtRplu1j7eLBq7MNuaeCIjkxgLEfuXkkwXbajRL4al+
         kOqryxrYi7M+mOn0EqtL8oF0RnBOhUa4lPvF3/6qwv1FS8RE9J1GtEYZHL0n8SDBsklm
         5i937ALjSdM17bIV58oprmAUEgtXmldwQGzFrciBzBS3svz8stFR6EEY6upGo81pwpHn
         inEg==
X-Gm-Message-State: AOJu0Yw4NC2g/pw/K+/KakL2sL7k+fZ8wJIwsAuVL1IKYv5pCeBwo3XG
	pmebXiJc9AZ0v9qzc8uX+j39vMp0VBfL/st3BoiigwIGhZ5JUPsP7jk1A0jm6mOVTbRYDWOtaKW
	FP1E+kQIywFT3CgFpUH6lc9SQD8WetYGhPQ==
X-Gm-Gg: AeBDiesQh2M9YjhPc5HrOcR4LUEFgAA/umb/KlgWkSvdUt/o+pNk9HpyX6ao69uedQL
	/O2PxRLaJGHsT7kvnvPQD8V0XdNOiOPhj+pc0IK/XFwP+gZh23vtOyY2u5jGCUsBw408cr84my8
	liZxne32yAlssMFgdQkjieiu03AAhT7iNlr4MRtr+sCAyk7yvusTY/Svpn5+bAqEhcBj7jVnJRz
	SgK+iSpPG9F3OpXZLFNblHs4jfEsC9r/zb+s6wsMCvhLqmR4P+2W1jdKpeLjQHySGScgnewKWoI
	U7ydVAc3Gu7O8OD/pjFZJaaH31kZeS4KTV4/Tu1/IlEpakfyQh4w
X-Received: by 2002:a05:6102:a4c:b0:5ff:e769:44bb with SMTP id
 ada2fe7eead31-616f84983c0mr17111115137.30.1777225180374; Sun, 26 Apr 2026
 10:39:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-3-dorjoychy111@gmail.com> <ae4MinC7edJZRGFF@devuan>
In-Reply-To: <ae4MinC7edJZRGFF@devuan>
From: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Date: Sun, 26 Apr 2026 23:39:29 +0600
X-Gm-Features: AVHnY4JoJoa1BOFNWJjPFdDx5fcdFjCWdfRWkXOYXBmwZSxJVwJkjYR5uQessYc
Message-ID: <CAFfO_h4cL0nPV8YsSHErJN9fqHy3e4j2C-P-PPUcxr1xAJZ5pQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] man/man2/openat2.2: Document OPENAT2_REGULAR flag
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 94B6F46AB0A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5409-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

Hey Alex,

On Sun, Apr 26, 2026 at 7:03=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Dorjoy,
>
> On 2026-04-26T17:14:26+0600, Dorjoy Chowdhury wrote:
> > Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
>
>         Reviewed-by: Alejandro Colomar <alx@kernel.org>
>
> Thanks!  Please ping when it's in Linus's tree, so that I'll merge.
>

Thanks for reviewing. I should ping after it's in Linus's tree,
meaning if it's in Linux 7.2 or Linux 7.2-rc1 ? Sorry I don't quite
know the workflow. Also I guess I need to look into glibc after it
gets into Linus's tree, right?

Regards,
Dorjoy

