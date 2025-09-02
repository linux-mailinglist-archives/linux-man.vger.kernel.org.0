Return-Path: <linux-man+bounces-3826-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AC4B3F690
	for <lists+linux-man@lfdr.de>; Tue,  2 Sep 2025 09:24:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8287D3A4228
	for <lists+linux-man@lfdr.de>; Tue,  2 Sep 2025 07:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9413F1FBC92;
	Tue,  2 Sep 2025 07:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dYEN9dRR"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19F6282E1
	for <linux-man@vger.kernel.org>; Tue,  2 Sep 2025 07:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756797878; cv=none; b=G2fPJLVwLLA9EyAiVE4nSec79N6Pr7nsEcxHjtZYQ7a22JxRPRnMKVS5EIjJ1pjF3XQENfkqfg7ssZ0TD0YvxsWa6h1+VToFaXOsM3LaNpmEzUwvUeqtAZUati7bIuj8pLMI4U+NV4uyFy0w2Q11TASnAaOtdy1lw4o1F33NX4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756797878; c=relaxed/simple;
	bh=eju1T8pCVvx89ZeKHN3PMLyReKD9Trk3dm/ZoDrU3XM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ByOHxptTYkL31KGnWAXOWEqz9lM8i0ZJY6qm7jmq9bXETCGWl4wVaPuKfjysDBCsrtcK9V8SAX+WVD6TGUQJgIHQFbdyLHUrxRdbjGxbPyngyPqw7CaiARujNHnW+8jRbkTEWXod59m0fNe79zApdxr386Ep5u50XYWHKw4cV5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dYEN9dRR; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756797876;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eju1T8pCVvx89ZeKHN3PMLyReKD9Trk3dm/ZoDrU3XM=;
	b=dYEN9dRR/JtkmFjNE72FlKlmXU5jacyRyn2Jnfh1jn0RI32YvnDIEhT9VI7lByO5K7E2a5
	H+1XiBpxCHliSgaEL6IsOU4Lln9b4B/07xkHQD2bAwrY8TUSy84jPuf4WCf8AdZyYHAA7/
	XQc7yUieL4rhmkCBV5brxrwCnKD5kMs=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-hxgx3bgjP92jSLSYAmY8Fw-1; Tue, 02 Sep 2025 03:24:34 -0400
X-MC-Unique: hxgx3bgjP92jSLSYAmY8Fw-1
X-Mimecast-MFC-AGG-ID: hxgx3bgjP92jSLSYAmY8Fw_1756797874
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7211f13bc24so4570996d6.1
        for <linux-man@vger.kernel.org>; Tue, 02 Sep 2025 00:24:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756797874; x=1757402674;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eju1T8pCVvx89ZeKHN3PMLyReKD9Trk3dm/ZoDrU3XM=;
        b=pI6ND4UsvxeuC6L87GoK/msUQF6rKWKhj37pD6iCJ6aX7kvHIVM/SPRJieFKUCOsw9
         VvyeZy5SWMClA/8WsGlKXAQaMHbuiXH+XsKdXQ5WhxDAASognstoBkMv69rJ5GJN2wWE
         aqZ8kSao5xctofUA5NwnOb0Yx4WxoNv+/+3O9mjarOpYWbNYetsarn1bFAg/El7HuFUi
         8evPv+L9P4M1B4dN5AUPSU6RzgQ6CGsnMkuVBs59suIUeE2WluyfwVzepUfIHSqBPPGR
         NBDOugMwPUMP3cJtqTmXKoLzlqHiABO7X9OtkcObJ/cM6lX9vEnJRMTd2+cz0Pug/RTn
         wdGA==
X-Forwarded-Encrypted: i=1; AJvYcCUxhsBW3CVcxpk0aakwztWujOIg60E/eGo/TfJBbbQyhN64aqbe1qkQPpPNBIIfXjk6CktRVhLDIhc=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywtq4ejtMAkbsKTqF61GXudX4ZjPUMsIJ/oa96wK0kffbQ+brMG
	4HKv61JPuv8+f20b4aqnI2Xtmnvdlq6U0CaFMSYt5MnhwFgyZmYa5ZGDkfRiV338vixnVguOM/o
	LUUGeRwiehNDNUd5APrpz/csJJgONQxmLeQ7Eju4DcWeRLk2UsEHJ7pii7qSNLw==
X-Gm-Gg: ASbGncu/xO+cAoOYbONsH/3+XoTFnI5NxaJiVsifdpfV8j7qrNzFfJZrN41I+fz0bAE
	Vu72Nb3Zk7I1FFL4QimBXuNlMbhEaXXrCU4plzj2TLOpkjpE4vHaD7A+9cUzg5l8MClYuWPMTQg
	lx6GO5qq6JQN6L3fbw6P+wNzIwgH3ijNb9xnZOgWqMkuujutBm2kDk7dbyi8EncPNa8o+AKf6fa
	1HCTHPLq+hXcwoy8+Y2AwTmFGKGcvmgxhKLlLnjvOYVMzXF19hyi7cQ6RgrTOgIMtGMpnJNz4Ug
	7z6PjIFmSCb2hd3P3Os9gpFgksvgPeYN9Ov0NQF7RmGXnHdtyKjKezWuyiZUoH9tNmJFrAs=
X-Received: by 2002:a05:620a:29cc:b0:7e8:23c1:f472 with SMTP id af79cd13be357-7ff26eab1ccmr994506485a.3.1756797873937;
        Tue, 02 Sep 2025 00:24:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPg3hdu5JodFozpWkdD4pgt31QG7L5zOYnyAbFPu7ZX/efiTBjunMP1yXYo/JW79MBOL2yLA==
X-Received: by 2002:a05:620a:29cc:b0:7e8:23c1:f472 with SMTP id af79cd13be357-7ff26eab1ccmr994504685a.3.1756797873553;
        Tue, 02 Sep 2025 00:24:33 -0700 (PDT)
Received: from jlelli-thinkpadt14gen4.remote.csb ([151.29.70.210])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8069cde2863sm90429085a.58.2025.09.02.00.24.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 00:24:32 -0700 (PDT)
Date: Tue, 2 Sep 2025 09:24:28 +0200
From: Juri Lelli <juri.lelli@redhat.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
	Alejandro Colomar <alx@kernel.org>,
	=?iso-8859-1?Q?Andr=E9?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH 1/4] man/man7/sched.7: Update the real-time section
Message-ID: <aLabrBwH4Mz8seCu@jlelli-thinkpadt14gen4.remote.csb>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-2-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250829160200.756194-2-bigeasy@linutronix.de>

Hi!

On 29/08/25 18:01, Sebastian Andrzej Siewior wrote:

...

> -The FIFO and RR scheduling policies are then used to run a thread
> +The
> +.BR SCHED_FIFO ,
> +.BR SCHED_RR ,
> +and
> +.B SCHED_DL

I believe SCHED_DEADLINE would be more correct?

Thanks,
Juri


