Return-Path: <linux-man+bounces-3297-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 758E1B1137D
	for <lists+linux-man@lfdr.de>; Fri, 25 Jul 2025 00:00:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3625F1786FF
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 22:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DA2524A066;
	Thu, 24 Jul 2025 21:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="L/kH0rLC"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCAC2441B4
	for <linux-man@vger.kernel.org>; Thu, 24 Jul 2025 21:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753394397; cv=none; b=RkrQsfrf68nPPCuKMsgK1nWzaPbAUIf6DDYXCCGppReWVtr+O1jhAbSVq94C0IKixHB5eS5OMHRJIu8kibZJPQZv2Ji3gTEDV1+ajLNoxdg9K9FqQvlgdv8I5UAmvYAiSwINCucPMdta6RvOeUaO7SEh1uBh0JkJf33nc4+YG0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753394397; c=relaxed/simple;
	bh=zM7Oqn7desp4vEoLMxOYOu/CTb78VBNE4cgWoUfeOOg=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=EbU0gUO3Kq/g6Os5BtvRmwEJwqXXuOGORSUWppktNCEYrLGWb3/hrMfJf1dZj8uIBe87pumcxw7AjQeNZm81Kp5D/4TbwmE/9iJ75mAcbhwQvsg/Z+l7ip2i/J5rTI48iGiIzLUXB5DZKKujtbIdj10dzMDaQbfWq/uws59lg5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=L/kH0rLC; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753394394;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=g2K3ePECGYE13UwvvdboOdefeDGu4KiWBFOjW7lV8cU=;
	b=L/kH0rLCUJo9OjrwWCyG6ZBc9AiHpS/qLWZ2zL4aLdyV4PYf50CPGfLNW09hsiea749okW
	jXPv1cEMyUrQa/gzs4b/3+wplL9W5M+bDjjhV1Cpu87VaDWcxJJkMNOSXtIDY0GUh5qgWj
	+X1SLWiCnaxzlEcl0H7Tm0frK9QEBDk=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-186-TT_4V6jKMZid5qEut1KHAQ-1; Thu, 24 Jul 2025 17:59:52 -0400
X-MC-Unique: TT_4V6jKMZid5qEut1KHAQ-1
X-Mimecast-MFC-AGG-ID: TT_4V6jKMZid5qEut1KHAQ_1753394391
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-4560a30a793so5537055e9.3
        for <linux-man@vger.kernel.org>; Thu, 24 Jul 2025 14:59:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753394391; x=1753999191;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2K3ePECGYE13UwvvdboOdefeDGu4KiWBFOjW7lV8cU=;
        b=VWrcDn9S/wQwDNB8IegwoIWzMexm3IxZL5lEEJa/lmjhPaG5D+Jok60miNyFePExqf
         XaAk6KqqRbE6Ba1XW8AUG55/Ea7aKFsYCfaOK3mIepGo8Iprb77cZWdLRaSM2tld1mJy
         myePWVMrHM+9WX3nXcKVjUXz3o0siFhR5xcFwvDeNf+oliS3XzPTmskhuyOFQQkhwU4Z
         Z4jRBO1sxMm5R4PtFMzQNhzo1rBcCCXRaWldBxvJCMdt1k8ucQlVch1ElYDQCwPGjoYt
         +N1ky/IH8Kg56UXWwBxfC+cTZwl5+SSvfTEYEMlN/PCAQyihIQEEqFzavX9BCzpbvvF+
         oZfg==
X-Forwarded-Encrypted: i=1; AJvYcCUa/rLp9osXG/zKDeTErV1Ohfu++Mk4lqqoV95gv+xyVeJgIzwmvJeVuzuUJYNeT61l2+VHqMFgNXg=@vger.kernel.org
X-Gm-Message-State: AOJu0YyZXDSLHI4JjKzfB+BnPnkG8+NLf5fXyxowQMLP728T0dzBtQrO
	6lySC0gunmGBiHkDKZpOGskCKSt7Z9q/0oMtJm9xRBVfaFkv9coNihdr7JIUAM2qebUblMbRsxD
	2Nvj4XeJGQEzk6KK6S0INEwLf5vdrdrfEowFUyt/OM4kg1jLg+kEUbpqEiRMoUX0MSzPO1A==
X-Gm-Gg: ASbGnct83IGupiQVsO/g4vVY3CHOinNycWdw/B4AT85N1Tgj2+wM9wDLIDxoXePsSv6
	CZB9IErW7qa8AiotAAJVWFYAF/ZZkFkhlYZwN9FQtnXxkwWGq3OiHobv3SPEONkqOEAE/KG2VNV
	k9K7pydYbrJ/u2T/u8k0Ht2LkIewqsVz0SngDC4imPLuHOr8GnqRZ6hg68cwT/gvnjZlLTG2aow
	Nz6/Se01s7K5Vu/B/sjYSGL4yiu74FLsVdeG/8iagEAkEpd4pErLI6pi2criAL2Py1zrYSmbWGN
	66wVeL13TCpQaTtPnhImKKgn7fTPTHTklLG4L0L5iYR+cIZKoOKwIYq6v0Mq0Qu9z0yW56M=
X-Received: by 2002:a05:600c:a08e:b0:455:f6cd:8703 with SMTP id 5b1f17b1804b1-45868d5326cmr76313935e9.31.1753394391238;
        Thu, 24 Jul 2025 14:59:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVo6aGDfb/5pSQr4Mxuk+bcHz6aJ7ARvQjdn7c0nFz6/wz5nRSKSISSve+Ke9SSy0RQoJn9A==
X-Received: by 2002:a05:600c:a08e:b0:455:f6cd:8703 with SMTP id 5b1f17b1804b1-45868d5326cmr76313825e9.31.1753394390805;
        Thu, 24 Jul 2025 14:59:50 -0700 (PDT)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458705c4fa5sm33453105e9.26.2025.07.24.14.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 14:59:50 -0700 (PDT)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.97)
	(envelope-from <josmyers@redhat.com>)
	id 1uf3ye-000000013vF-2QZI;
	Thu, 24 Jul 2025 21:59:48 +0000
Date: Thu, 24 Jul 2025 21:59:48 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <une+c@alejandro-colomar.es>
cc: Vincent Lefevre <vincent@vinc17.net>, C Committee <sc22wg14@open-std.org>, 
    linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32615] alx-0051r0 - don't misuse reserved identifier
 'exp'
In-Reply-To: <20250724201957.0D806356A06@www.open-std.org>
Message-ID: <d2c61bb8-40bb-1457-12b6-9c751cc78404@redhat.com>
References: <20250714222434.4D926356820@www.open-std.org> <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com> <20250724191011.GL4912@qaa.vinc17.org> <20250724201957.0D806356A06@www.open-std.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Thu, 24 Jul 2025, Alejandro Colomar wrote:

> > It is not too broad. A compiler may define the identifier as
> > a builtin. For instance... GCC! The following program fails
> > to compile (note that I do not even include <math.h>):
> > 
> > static int exp (void)
> > {
> >   return 1;
> > }

That's file scope, which is a context in which exp is reserved.  The 
proposed change was about function prototype scope, in which it's not 
reserved.

-- 
Joseph S. Myers
josmyers@redhat.com


