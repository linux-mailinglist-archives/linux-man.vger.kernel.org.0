Return-Path: <linux-man+bounces-5370-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLZIKH776GlNSgIAu9opvQ
	(envelope-from <linux-man+bounces-5370-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:46:54 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 448F5448D41
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:46:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AE7B93002311
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 16:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1F93603D2;
	Wed, 22 Apr 2026 16:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j3WQLHK9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836572D8385
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 16:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776876410; cv=none; b=TkgjQ9ibBax9s4qOHbw3CxpXU81D6RilNlwAz4lwMFIR9Rcliv10LrNycVLc6SenLvvWNf6hHGrL5Q0BTfZmYAh6NPmag1E9vGIuA+BU70KDjlbSarVQ2ojoQ/8JowlSgP1lWAvvNOgtROgd3GnlTedra9eQK+gHdbgHN47MBkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776876410; c=relaxed/simple;
	bh=99zbQyaHlkbKNVHdYINy1JrPLVv4+cbKDfY0jQlPFVI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i7bp+GUq2Fv6FggESyfiKPA4xGUz31mU2amt4TyZ0kWMYOmRYK53tgrQ42qUOPsH7iu3U8DcEJaZuPE9ZImaka2nFzYNuZ9V0Lvbt2uzfaNR1j1CglJ7w8LwQyHADx7nCOo+MDnaz2QWgjGc7x1IRDzJzoYtlBw9hU/T7aBa6wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j3WQLHK9; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c6dd5b01e14so2025268a12.0
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 09:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776876409; x=1777481209; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MTiFznwmxuxHJ7p2vsCeECnBXbTkoHzLfMOh4vRan8U=;
        b=j3WQLHK97Boq6Jj4RaTaGNZh2syoT8NLf41IFRXIifjhduGgP+RzqzYmKIF0MZox5C
         GQLIuNpVYJd28kbVGEWfRraxISu0AHysG6YXBdvVigsq/Ku+FPybpnpuHYv8jLkDJojf
         RcXJU3FwTdqph9wOCJaO2wArP+MiGjFh1K90SK7sUdNsvkdbaXqGhdgVbkuvwEJPcnh/
         2S+sbWXlEuFoefkc3F7GEe8CsfU6eJ3WVxpuprLH9l1/m3hdMCez6xQKRAUrSS5yXuMv
         RMtar3A/FS43CepUwEKlZsmkqcNPyYnqDri3YXcuyF+RvlDRalEvKBprH7xO3t/CO1Zd
         d7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776876409; x=1777481209;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MTiFznwmxuxHJ7p2vsCeECnBXbTkoHzLfMOh4vRan8U=;
        b=KFvi+AW17xvWI+gHzPi+YGLOiZcmBkLkOQsxMJV+ZUncoNOe9G6weVOdxXp5YUmVeC
         XBTZdo/MigQYCaQTlb9HN4N4Wz9doSaj77tkytuejpWXwFR5lZnO2dJgPjDdBY1vO+lt
         h6vzErRN852wCfSlPnWu3u04f8VQndJ9o1KcLWHoBxPx7j2omZ5/PJeU73OKzNlF8Pb5
         wMmE3E/WNSrnGZWi69UA2jXDJRC3raO9Vy6c3c+/VlBMk5lhXSQwbQIQi99EAURthgey
         dILqe8Hf9t+uq/o09QIlY/W2W4UfGtF1HmM5RRPRZ0zmoCkdeHCYQjq/XVSNqc//7SqS
         NvgA==
X-Gm-Message-State: AOJu0YxIUG7BfmWqa8GjJ0+eBUPldJ2UdxZL11Ya1ghgX0off7XbQRbS
	EeVsoMB3c7YBWzjTDWhIXmRv9Joy0NBqp4Pxqx1mLhJmtbJ/Q8qbB9ts
X-Gm-Gg: AeBDiesE7D2zkG8qfCAIVliZ+aeUEipZFwtAoWVBYPOibXYRi2CtVlKmgIdcJrzQJyG
	IHhjvLJaEh/3mLNiOyRS1X6A+TPAQC3zLKOyKBiu/Msw4PD0ioS06etisqkNn/sVxPqHlN5Xlp7
	sq5nTurwmI7M41NXLdS58JtXi2WDW7vacGoHDTo9zLPq56pT/E3vpyuN0fgRtYG8LAkOwFfU/k+
	CW8XFxMb5IgtW4+IXuw8dDD9yTAQ+/5BBPaI7JApPCrxFdj6i8YbsRGoPdy07lV4JenkyVsgS+1
	3xWkkiEr8It0o4Z3tltm7rOYLPtgwdUAtsRtMc3div75xXjZIyC5rSrRCSYDJNRrj7JR4r3Wgys
	reb+yoeOXgM/YVFduVbiCMzGxbGnp4wLi651aSYdQBSKnLwGXGDJ2SBj1hBqwZiBJgcji2cvqFB
	iaeoOHCZtb2diMEtixwO5Ubitx3xl01TKwpZEMwYABsAOVOc9aPWF5y5bkqqQdH3JSDLT5bx9Oi
	lLQcDTHoGnQHdo0nB1UuLJFSIA=
X-Received: by 2002:a05:6a20:12c4:b0:39b:98e3:6a30 with SMTP id adf61e73a8af0-3a08d92f367mr27793102637.51.1776876408812;
        Wed, 22 Apr 2026 09:46:48 -0700 (PDT)
Received: from cchengyang.duckdns.org (36-225-97-241.dynamic-ip.hinet.net. [36.225.97.241])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f8ebe6439sm17842971b3a.41.2026.04.22.09.46.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 09:46:48 -0700 (PDT)
Date: Thu, 23 Apr 2026 00:46:44 +0800
From: Cheng-Yang Chou <yphbchou0911@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, sched-ext@lists.linux.dev, 
	Tejun Heo <tj@kernel.org>, David Vernet <void@manifault.com>, 
	Andrea Righi <arighi@nvidia.com>, Changwoo Min <changwoo@igalia.com>, 
	Ching-Chun Huang <jserv@ccns.ncku.edu.tw>, Chia-Ping Tsai <chia7712@gmail.com>
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <20260423003214.G1987@cchengyang.duckdns.org>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aejvcpOKmAxCnJQV@devuan>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,kernel.org,manifault.com,nvidia.com,igalia.com,ccns.ncku.edu.tw,gmail.com];
	TAGGED_FROM(0.00)[bounces-5370-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yphbchou0911@gmail.com,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 448F5448D41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alejandro,

On Wed, Apr 22, 2026 at 06:02:49PM +0200, Alejandro Colomar wrote:
> What's the reason for this weird formatting of the source code?  At this
> point I wonder if this was generated by AI.
> 
> Please take into account 'CONTRIBUTING.d/ai'.

Okay, after reading the AI policy doc carefully, I've decided to drop 
this patch. I used AI to help with the formatting since I'm not familiar
with the rules here.

I didn't realize this was strictly forbidden here, my apologies :/
Sorry for the noise, and thanks for your time!

-- 
Cheers,
Cheng-Yang

