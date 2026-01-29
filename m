Return-Path: <linux-man+bounces-5006-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8By/AWmKe2mlFQIAu9opvQ
	(envelope-from <linux-man+bounces-5006-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 17:27:21 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EFEB2298
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 17:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 72ED23008E01
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C0025485A;
	Thu, 29 Jan 2026 16:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="St2Qm26h";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="RQ3Okfvi"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2BF1DC997
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 16:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769704036; cv=none; b=NjGBbn2wc1kWvNsa6o1xx3C4mNd0L3JAdUtOEy94q57/PS7ykuYGPICVb0Kc7cTRdL8Fl5XTr7VfAhGzK9Ob3xnb1AtWO1AJLNNIokFOqcdhA45z5v4KIe/L0w8P71yOc/4YEuSBfz6NKNR0NfwijxduSBOvy+NsZGrgfq2Y9d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769704036; c=relaxed/simple;
	bh=aqAzwqGiQpl1M00Z/MYAokvGFujRNZ0lesQPZTxF05I=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=Cdd71QIb2OoxReEBSCWyDcpxRowaTsOOnouZUNj3oV0Lh0EVooqTx4dQgCLRKo/Rj5wiEdO2oHLBc6tH47/s9j1E5AHz5ElKbayhVewuUF+q78LrHQAu+287OqVb12fveoPWe5wxhNjCK5liTYkzBNtM1zF5JJAsacwiFlKj4z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=St2Qm26h; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=RQ3Okfvi; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769704034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=O0L46XtTKmBGmc7x2iAHtGSsHCazKxhc6q1qm/AQ0ZM=;
	b=St2Qm26hqdsY63cMQIldWEi+j1Sgv0y3LZd8ld7Ky/MD0n/qg6Z6zstBhOrwU1iAE2jsJK
	H9aRZxjZzKAr1NG9nLrEHPdEPd6huqkE7wWtPHn1ohHl37dSnFZg7l3xOUcYWiO1GZ+plu
	adHkt5aZTCPz2oZLDCrSuGZq7S2Q6oU=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629-5BTTjzW-Pniwap160x44bQ-1; Thu, 29 Jan 2026 11:27:07 -0500
X-MC-Unique: 5BTTjzW-Pniwap160x44bQ-1
X-Mimecast-MFC-AGG-ID: 5BTTjzW-Pniwap160x44bQ_1769704026
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-b870d3327baso94909066b.3
        for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 08:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769704026; x=1770308826; darn=vger.kernel.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=O0L46XtTKmBGmc7x2iAHtGSsHCazKxhc6q1qm/AQ0ZM=;
        b=RQ3OkfviSyBAcmlNDafTNSITQq9FLwvY/TXGUtSvXi8BbWuwhr6q3BmfUPzODqF7UW
         9nXktICO7BcOSbRU2hTgfprNTeDyOefBmfLmclmzX+siALPM6Ye+m4W+n78KS/uKG/ni
         cg0+PbIozx0gGuF4Ow/ycqAKRLX6T/3wN88p17jeBHRLj6jx308AEZd+irnd7nW7FGCb
         SmsWQ14LDQHZ3Bi1j49EWx+lfE7F6hYIHh0AFhPOFTMEugZzt74on8MDIqjyAbmkGGfk
         3CK7Osgut4/YaNa4DHBtK+f0EFnQmcDCDT7GTTnDPwx3qiK9pd/Osra/t1JWUhMLotm2
         z+Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769704026; x=1770308826;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O0L46XtTKmBGmc7x2iAHtGSsHCazKxhc6q1qm/AQ0ZM=;
        b=st5jWtRANmRLOKrHXA4Vebf5zXXvt8/VOwBfM2m5vyxbAvl8LvzeZ1iR+JLFfZ14og
         vn+R7R/uWGsH4ZMt+LXERLCyJMQ/X64L7QOCAs08SvB+FPsBks3vCFIKvW6JV1ZrKezl
         bMjP8xxDMRBJ0IEtE3AMGrJWcVO+2UoM7PwYJksRZJRi+SHueBlXSGNPe7h4soopgSww
         1FMy5LblexBB2StDnlseEzJ/U9ZGezgByhzE/RluHGYyGq2+MDsEMYdVskuPps9IBLfs
         yZqltVPmWXrOozARbzlZ31cIPiF9R7p43Cgip6GhsBgt9EvHpY8IR4/CEif23GV/TX6k
         ZHJw==
X-Forwarded-Encrypted: i=1; AJvYcCXyx5T6AskefK40mq6PxqwPtgTN2OIQWZIG/tOAy4jYFMx/AP76G2u0Y8qUinpZqxDPNSBrfk1YkNM=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/HPMn4pK+Ss1LWoDFwYuMkDrsVFvAl9NP7zEcj7jhc6KOLZuw
	p6SRyyqkuCWnz/D+HHX/77vqtsHXy35lx73oxeMZVGHS279KKSiTwa4PMHKKjIhFB43ILtbePZF
	eSR276MB6/lYFUElVRaa1DQTe/+cRA8zkMXWgNgKkEzdOnHOuTmjBOpzNB+uA2g==
X-Gm-Gg: AZuq6aLwRRtdbk3/wpBS9kHYnhvazg1qHW68v7uwEU72Ieno1tWWMYQ+iWuELff771c
	dAJ7HTfKoIwhsac+x4c7wzC3J//0QJbAn2235kaY1p63NWv43b61cIR4Yj+9Z9u1xdgglOQOZ3F
	se2ztJ8r4mRVSY1NQzd3BgSLZhv3DneqHpoBZ9AvJdevlaHBTPswbTT7QeNzupAQAKo7/L7zrSn
	hyTbxlb6x5/nsvvZs0O4yruig4MDH1xTE06eQmpkggBf8x4UwKeEvsV1ubAeExH/HfMLi0OXOWD
	SKsloAbi9EE1uvXKbI4tfBBD/s/rU+4f/8uzG9ob0qJyDjmDXx4QeBVF90SLBbdykUsqgWF3qLo
	jVc1CmtAhRFJhICxyfi3ya65IMab8rhet0KFpb6Wb
X-Received: by 2002:a17:907:97c5:b0:b73:544d:ba2e with SMTP id a640c23a62f3a-b8dab1cf2f9mr667467966b.25.1769704026367;
        Thu, 29 Jan 2026 08:27:06 -0800 (PST)
X-Received: by 2002:a17:907:97c5:b0:b73:544d:ba2e with SMTP id a640c23a62f3a-b8dab1cf2f9mr667466066b.25.1769704025921;
        Thu, 29 Jan 2026 08:27:05 -0800 (PST)
Received: from digraph.polyomino.org.uk (digraph.polyomino.org.uk. [2001:8b0:bf73:93f7::51bb:e332])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691d15sm2998928a12.19.2026.01.29.08.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 08:27:05 -0800 (PST)
Received: from jsm28 (helo=localhost)
	by digraph.polyomino.org.uk with local-esmtp (Exim 4.98.2)
	(envelope-from <josmyers@redhat.com>)
	id 1vlUrI-0000000AZfw-2Kkk;
	Thu, 29 Jan 2026 16:27:04 +0000
Date: Thu, 29 Jan 2026 16:27:04 +0000 (UTC)
From: Joseph Myers <josmyers@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
cc: Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org, 
    libc-help@sourceware.org
Subject: Re: floor/ceil man pages
In-Reply-To: <aXt9Cad8zPxKEWHx@devuan>
Message-ID: <af74fa04-e25a-7300-bdc5-bd3092ecc3ff@redhat.com>
References: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com> <aXt9Cad8zPxKEWHx@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,sourceware.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	TAGGED_FROM(0.00)[bounces-5006-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josmyers@redhat.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 77EFEB2298
X-Rspamd-Action: no action

On Thu, 29 Jan 2026, Alejandro Colomar wrote:

> > "ceil(-0.5) is 0.0".  I can't find a reference, but (1) this looks
> > weird, and (2) it looks like libc actually returns -0.0 which makes
> > more sense.  As noted above, ceil(-0.0) is required to be -0.0 if if
> > ceil(-0.5) were to return +0.0 it would make ceil a non-monotonic
> > function.
> 
> I have no idea.  It doesn't seem to be specified by the standard.
> Joseph, do you know if the floating-point group has talked anything
> about this recently?

round, floor, ceil, trunc and roundeven (of non-NaN) always return a 
result with the sign of their input, including when that result is zero.  
This is not anything new.

-- 
Joseph S. Myers
josmyers@redhat.com


