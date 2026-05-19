Return-Path: <linux-man+bounces-5560-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKSeHfd4DGoSiQUAu9opvQ
	(envelope-from <linux-man+bounces-5560-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 16:51:35 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E72580E95
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 16:51:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A10C43056DE2
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 14:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0C323769F1;
	Tue, 19 May 2026 14:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JUC9Y8dI";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="m47lwhCp"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0AC3769ED
	for <linux-man@vger.kernel.org>; Tue, 19 May 2026 14:51:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779202290; cv=none; b=cmxnrGj3Qc510QD04/r6Wx6UvxAu3ca8MqJqxcjW7XFuzkaStUmkLeBQVGQXILawhY/Lk0dW1CxFw66F0VBFLrto6eYLOUjU80+4//CGvKNlHVamxU4LNOpXio3qoRxs9ChktgZqdK4QQFlhBOuXJJAlgVRqFKxLpvlBIahhuBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779202290; c=relaxed/simple;
	bh=NEoIaHsvLHj5zx3lNLVCZGoHpFCXbBKzUIiVllRzJzs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hkzSIXERq3/hhyEWiEQ58KPOnDGoS4M4ivENOSjg0d/21yeKGXNm4t7vBbSLdhMxXsNeeZCGtgs4PcQq+etvgHcqnZQGzwyxruq0nl2S4szaYJlFpWzZL8awp0dyNuCCCsvREGTnvWXU2d6VbWVC4KfKCi4EZ7wD+YlWDzPhk8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JUC9Y8dI; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=m47lwhCp; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1779202288;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XcrNSEfo4e3BuXDAYHvH77o0pZBRCDPR67FER6Fo/RE=;
	b=JUC9Y8dIcrzhK1jjtq9eSJJGNpwtKXErhMAeVGdO6XACkG5naXfAmO50j6FXLRLPyUHjGc
	w8PRw7wxrdeegibMhZZkoOgP9Saa4yqHR1Q0XhuUlm1Mr2MTZZqeNa2SbNaKxqXAWk1J+8
	HqQ45DkRgRfrapsQMDTG35/dIfS/dyg=
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com
 [209.85.217.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-600-_mmMcLcFPmamEmqik2V_fQ-1; Tue, 19 May 2026 10:51:26 -0400
X-MC-Unique: _mmMcLcFPmamEmqik2V_fQ-1
X-Mimecast-MFC-AGG-ID: _mmMcLcFPmamEmqik2V_fQ_1779202286
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-63309595daeso6554729137.2
        for <linux-man@vger.kernel.org>; Tue, 19 May 2026 07:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1779202286; x=1779807086; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XcrNSEfo4e3BuXDAYHvH77o0pZBRCDPR67FER6Fo/RE=;
        b=m47lwhCpDOznTXEEWB1BJaFMLOPVZlPM0+ENo56J4jcKa4tkRnegUslQH75lgi+L+9
         z055a39m/tEAy0qnC0TJqUdU8uz+8ZfMfBxv/tLSJ0Cys/jAhZfugBOH9vvGg8QR1xO6
         o0qXX+gjHi+VahTPTqBGmuS3U/PezDDV7vO9C36WfOdU3tO98GuXTLIloHM9aU7Iph1T
         XvfezicxT/t/l4RW/dtEa6u4P/O5Bw00JEmRwqXcVaClxOHHVoYOeXC1y8r4q/+ZYPlQ
         sNV7ME1YArLGCBziedK8364br5dJMTztLkePd6xDmm2KXVEmk1mNJTXOuFlnWy+5EFEA
         9Q5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779202286; x=1779807086;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XcrNSEfo4e3BuXDAYHvH77o0pZBRCDPR67FER6Fo/RE=;
        b=iUunsYf0hpqBo1gJ/nGaet3Kurqx6Q1bYALDstnw+mIMyu9f+OyafbkXiYPNi8c+e3
         OkAopmwmqx1+yIVGWusXcVtH9euwnC4xMNzdN1067qrfN7Awx7nBUPGnLuKt+jKBkxNU
         7rqPLA0F5umnVjNHAvAqv3aS8fa7mof0rrREsG0IpDme+LEFPUrF2+6WHai4CDnjcuSL
         rkl8mA2paKCPMPJntJFfa6YU3x3KE4y8ZSsx4c5mwAId5wkHnBM/mwxU4/oX4QEsyEdA
         Bfs2VFGyom41d1yMEY1Rq2RL+jUoDoPWFClR0RGAZdLi4ACaLznAx1JiWl0VGQiFDslm
         72aQ==
X-Gm-Message-State: AOJu0YzmKDSVKvSmX8UtTsoM7vCK9z9Mpuq5TRBiXL3mAvjfqzEZWWz1
	XKQio3GHI2irbGLJ1mASfZOkS9fP4omu4o9ykUvo7BtFaIirQbRjNWgqFN4QAPw+VZr1vER7O83
	kMq+PPgInsWey8MJV6yMe+cmcFkheTMNNnIku7+YMJupr+pj/eTprymFoLw92fQ==
X-Gm-Gg: Acq92OHfzo1rC74K3ldvwIYmGRT1WNlUEucj8UDQBpyqvcm4/z2CgB0lUh3k97ICDGf
	F9svunmjPFr1hk2S5a4pyDdVnC1J05NPXeTa5VabnceyNNheqfty8K13uUEhZv6bBb7GPklYUM6
	Z0qXWh2oXocaCnAJ/O7aAKZ58huJhMN6nqIIBua3B6hWuvlpuSPzU04rgAqlzgPRST9bkPvdU/1
	QVmQv9oLgmDtXa7Lu4YQJvKXR6OM5Y0jEF25G1FCIc5MskbJ+jobUFR03Kl8AlklAZmwRrUnNZ8
	q0XOPyGlnyKZnyQrHg2R6iRRd3vnIqH5PNaJRyg7EkRBQmuLg24PTs5wC8L8uCFpxCWuzEPtdPh
	uyOIFaEMl3qtPCWfg2cfoBqHqcQJn0S/A/CsBk7lNkVkvoNraGzkTWNLM5HQA45slVvCASckt2J
	vjL348N3BPBUitFS28vqrpkEau9PgFU4Kx
X-Received: by 2002:a05:6102:441d:b0:62f:31d9:7bf with SMTP id ada2fe7eead31-63a3ea745dfmr10691577137.17.1779202285798;
        Tue, 19 May 2026 07:51:25 -0700 (PDT)
X-Received: by 2002:a05:6102:441d:b0:62f:31d9:7bf with SMTP id ada2fe7eead31-63a3ea745dfmr10691535137.17.1779202285423;
        Tue, 19 May 2026 07:51:25 -0700 (PDT)
Received: from [192.168.0.116] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ca361b8b10sm94823656d6.46.2026.05.19.07.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 07:51:24 -0700 (PDT)
Message-ID: <b66252b7-4d1f-4e67-bc3f-da28ecff3eda@redhat.com>
Date: Tue, 19 May 2026 10:51:23 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man2const/PAGEMAP_SCAN.2const: fix typo
To: Alejandro Colomar <alx@kernel.org>, funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org
References: <agf5NqqQzWRde7IR@nix-mail> <aghbH6k51mGrWrVc@devuan>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat, LLC.
In-Reply-To: <aghbH6k51mGrWrVc@devuan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5560-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[carlos@redhat.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,proton.me:email]
X-Rspamd-Queue-Id: D4E72580E95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/16/26 7:55 AM, Alejandro Colomar wrote:
> Hi,
> 
> On 2026-05-16T05:57:31+0100, funsafemath wrote:
>> Signed-off-by: funsafemath <funsafemath@proton.me>
> 
> Thanks!  I've applied the patch.

Thank you so much for cleaning this up.

-- 
Cheers,
Carlos.


