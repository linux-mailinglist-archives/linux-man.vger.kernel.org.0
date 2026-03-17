Return-Path: <linux-man+bounces-5266-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNL1Ft++uWnJMQIAu9opvQ
	(envelope-from <linux-man+bounces-5266-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 21:51:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD9A2B26C8
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 21:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3FC62303DA0D
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 20:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3E938BF61;
	Tue, 17 Mar 2026 20:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="zkJD/Ws6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1058E387347
	for <linux-man@vger.kernel.org>; Tue, 17 Mar 2026 20:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773780700; cv=pass; b=HccAyTmaWrj33aQ/5WuGt2nePyTvuVfsBCQPG05n52Fvmb9sNjxEx9Io78HqpRhgvkiNM10hcDykyTDRoUPhYmEB+kpP77MJW7AGwjueSt/86tUcl0INmBVIkYyeTbZYyXuqbKyaUXBrUVtxh8m4RdMO6QcuTqeEbQVtcbFj9FM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773780700; c=relaxed/simple;
	bh=GSKQVoyGNlhyrHjouVXV5RpOfIDLEYyT4CeGvtHscbA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m20vtmyy2++FTnUpQvkuP6/NyHwbkxfZG54Po6bjBQGU1/WDZarpAK6i6YwYHg9LqR8rLS0/zezlJhT41xXTisTLv93u3XjbSIcoZ9Rtqe0QDg+rA2CxKz/jUUxK2NxGcaM5bhePN8D+jckZEj+nbCKwR+MNkMhSxekgMjerFbM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=zkJD/Ws6; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43a03cb1df9so6117137f8f.1
        for <linux-man@vger.kernel.org>; Tue, 17 Mar 2026 13:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773780697; cv=none;
        d=google.com; s=arc-20240605;
        b=FS/vzT0AB/LDJ8Mwal32kLV/btbeC64vJKXh5FUOzN8tVMPM0qG8xkrGM6qYIjsmsY
         A7ifGMbehEP9YbZ93KXYK8aJ/39I+VEGrRvcRaZPfXyL+SWZm2h3GSltTxdBqej0Z8ss
         ou5GMTR7ERCp2KHpr8/CsGQPP1iOvDnIakfjNuvSfP0gVi0QxRFzPDYUXbcuMo/Zi/lT
         wPl21hgVZByndW3/nSlW2rUlm4Fj2IuSnHEj93FNc6QRLO9UMhyKwWpQGmp6YdGjP7Mj
         L5othwDVcgU+1Hfrq0xu2B56YmhPQLRYOOJGDHvjqmiLMcMoxRNNeIBaKQ7oIvYcb+Pl
         K7KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GSKQVoyGNlhyrHjouVXV5RpOfIDLEYyT4CeGvtHscbA=;
        fh=kTbk4pccRQ7ywKItoF6eFeVMUIye+84NI5zbIP4rQ9Q=;
        b=fYetznwKq6ivITSWf3VjA/hUPUZqIKT7oCL1eOtR7bPEWmJV1ohFZkLd35hUuOO/5J
         8RG50N42EuzQiwuwH3VXwRoZyc39XAdBaHU7b0ynRwqLvGduuptlahuxhZ8L2EtiKOnW
         gDJZn9qLDqzrD6g9/5iisuybPPq/R1zk0Hyg6eTLoXeulz5+uDCDE6uVs/6y5AjaNVDr
         GeP1mVsj/flWVh7xTn/8E54lSdGZ8/dAdhDDIfurmeUf5S7VOZzOybmYUyHZ/6r3jw89
         Tg8BkN9x95u1twwN0gsVZrIpfpi8zjVQDARbyZ2bU141PZf97WtUVbBT1kbKMBSXl6qx
         UgwA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1773780697; x=1774385497; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GSKQVoyGNlhyrHjouVXV5RpOfIDLEYyT4CeGvtHscbA=;
        b=zkJD/Ws62nF4naXycYEyrDR6rHdjvCjNPySLi0bBNHD3jvOhjdxqZ8kp3YJM2viSEl
         4ygEBNZcQd+7JCWjXJP3Z04S4S3rMyJxoSO9iS01zbuo0FZWvPaBqcHuDb33sTtFQgfA
         LY/OIMk+qrpA/6kGWDF06xobh1ReA6hBDCdJOTlcvAIA+R14eHSNv76JOtJDqcTJMS6Z
         unUDFFOsH6lgY+yVUhTzlNxAk1QcA/2cdZUfrfmhncRyO44A5d6AA2xOonQXr/hF6i68
         9SLQ6fzK0AXC06JwZhB1FPNSDlDBHp/7IWigccjEEj8nI9PTCnJF0v2PlFNalez2/b7V
         yH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773780697; x=1774385497;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GSKQVoyGNlhyrHjouVXV5RpOfIDLEYyT4CeGvtHscbA=;
        b=HXifw6iGRuMRoQQf8jE2r3cviltXo+ZcFbQQkKH+UsgEIF74V2SNWEw8UGAmpz5Rd4
         c+DIubLxtIXVZ/iLza0Bu6vPOd0e4BtW53Cjv4o2JMLmEOrXB0PL+NdhLT7KMrL9AViH
         5WA0TdiL2vT3brusyXA1cQH0GbgtN3WdWscm5wFeTtA5bcGqUoTQcEMnlIln553TJTNl
         gcvAVs0tAPi/6i9ObBNtnL8zack2jTM284L3kwObmWayULoQG5lzl9xjPGuJmpXPuGtB
         cZXKipZ1+awOd4Qg936VEVGJCuOoK+MSDLAj/ASfOYJ7Q3kZYY2jr1GnGBRlW/XWpPHl
         PnaQ==
X-Gm-Message-State: AOJu0YxwAj79z36d10LJ16xTcLgab18rXZf2RoF1B6T8pyqAqUDDlEGK
	jEAxCiqSIc/OaYNq2riSYH+2ld2XhS/PdPtahyVSnqpai4TdwqfZ1807D3EvVikY3Ar4CVX3JNx
	xYN/jLAwELA+3/7/mSK0BGCmKEbTxtAwH2KmfIS+mQrHNsPBycjm+HUs=
X-Gm-Gg: ATEYQzwbzKljMhXl+0hbSb6meHD7ePQqqZFgoML2vNTW1jaIJeq/z2TxvKqlmrOCiXK
	xc2dsJiqc1BzckH3brnkwQ5uvKLvKnALJhl86ML3PFTErIDC9LaGWWNADeCwWKnVAEL51tdrupk
	2ANQ6cBnfse2AenHS8cWTEDcx4Xi4h5FZ4kPQkvmLzdicgJcja8MOTaMZVvnOf8kwSYRPyxX4cB
	qnzAusl9fpludcln/DM0guxNpur3f8hfn2kNAz8YMdp5KOfIGcWVGF4Rt+o0rCcrFo0kW8mfO+k
	EHOsNHj02j6shPgpLtzZ3iW5CN8/ykbncRRa+1e1G7Hqf0aSw/TX/5k22JcE+QsEvKN9w4f2DlQ
	ZKare60R+4Zw18Wq5zOw12GXUnugSSqgQdqWSrG2ahtOtOdt6xib7J1SOF8W7gf/xz74MFLduaG
	NNYyh/KhQpbSV+55gyDGEfmLOoqsNROCs2FeWtuUGqFwXgBQH9ZUwWA8m6P2zcwCBjAu/8N4idq
	3edcemmurOFew==
X-Received: by 2002:a05:6000:1a8d:b0:43b:4e13:2219 with SMTP id
 ffacd0b85a97d-43b527cbda6mr1149783f8f.48.1773780697315; Tue, 17 Mar 2026
 13:51:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223160219.1015364-1-benjamin.p.kallus.gr@dartmouth.edu>
 <aahJQb1CMG2kT59S@devuan> <CAB6pCSaoZPq8q9j2A9e==v1ErKUPErTrU8NJtUMdu7+DM6n=PA@mail.gmail.com>
In-Reply-To: <CAB6pCSaoZPq8q9j2A9e==v1ErKUPErTrU8NJtUMdu7+DM6n=PA@mail.gmail.com>
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Date: Tue, 17 Mar 2026 20:51:26 +0000
X-Gm-Features: AaiRm52_5p-VZCncELf9fJaQaJvF2QjuRAbRDF9bK84kpGpIJb3Tr68j3f4jdv4
Message-ID: <CAB6pCSYH44UiNQkEU8fGFBquV5zFh_513n7yZnOY4==S6HX9Kg@mail.gmail.com>
Subject: Re: [PATCH] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't
 affect mmap return value.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5266-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,dartmouth.edu:dkim]
X-Rspamd-Queue-Id: CFD9A2B26C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> And if it was correct but the kernel has changed behavior, it would be
> interesting to document when that happened (if we know).

I just tested this on Linux 2.6.26, and the MAP_GROWSDOWN flag worked
the same way then as it does now. My guess is that the behavior
described in the man page was never correct; it would have been a
large breaking change fom the kernel to modify the behavior of one of
the mmap flags.

I'll resubmit the patch with the updated commit message.

