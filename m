Return-Path: <linux-man+bounces-5235-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMXdJS/LqGlBxQAAu9opvQ
	(envelope-from <linux-man+bounces-5235-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 01:15:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2402095ED
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 01:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D83B30247DD
	for <lists+linux-man@lfdr.de>; Thu,  5 Mar 2026 00:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 598521A262A;
	Thu,  5 Mar 2026 00:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P+4SIpzI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CFA1A3172
	for <linux-man@vger.kernel.org>; Thu,  5 Mar 2026 00:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772669736; cv=none; b=txy8VJnQ0cKJsjgiuFRRsb5D7OtFsYE4dTyMb1U8Ny9ewLugnqITVVzxkQg6VC6RByQVlJGXPJY4/fLc8ShqF2Tnzg1Q6MruQwgkvgQN0Fu68ej1yKf+zUjptsnZ6j3CbLadN2v68fVopuHG5wzp6+FYlSpKla2dlZ7g2dMQ4/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772669736; c=relaxed/simple;
	bh=oD1ZD/6HP/nXTFl57YIkdx3LbG5nu9lngbzxRBW0wa4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kqe8OSnXkfDmdtEUBESKBS89Mnn+shT1+3RldvtIvZtjAf50dUb2jBKGESX6UAUWguoxCg7FPZMn07M8t/Swy2+Vxx3ZpP005fmW6Neyd2fMxy923SiLpTTRjsp3g653WAd8UgbqTptyrwazahlml+Cc3uvprevn1kQ+AIuIo9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P+4SIpzI; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso67552985e9.3
        for <linux-man@vger.kernel.org>; Wed, 04 Mar 2026 16:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772669733; x=1773274533; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eW1HMLHLxb1c8A3SBvmOdc4iVelN6+5jzeePEBn/8lI=;
        b=P+4SIpzIkymBy/ReUxV1RvTDUWY0u7PefuEgc2+ew+PHs1f9Jh6/c9FHIyQdgEggme
         56llx8unghls9ACtceDQ6K5NeIb09aKWBN5ZmsqYhbIH1dyMokO97gsySJw8yGfN6hSC
         XM9r4uYM6izbqab1tx6FNBsZ26lsMSVH1Y9R/lEUM/k0HiVWoG0vxt5qsoSpl7eq173J
         gzuAueRaQ8kdQwHfJ5pVE2JMO3QZxJ/PByKXLpNWUYSYc93qmFG01bE9Lmu+cUj4ReT9
         CXB9nCr1u3isiaohfgB4KqYN93XKK7tCxCJV0V+EOgoetfkLPuwEcIhaMB4vOo9jNd94
         230Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772669733; x=1773274533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eW1HMLHLxb1c8A3SBvmOdc4iVelN6+5jzeePEBn/8lI=;
        b=SBWo5aQ79WsmFqbw6Jac3f4KAg4jKByP6BV/mbIS6sMEXzwvrYdOkIxINAFCYExbLW
         RSx4iZF9x2taCOAKnekNXB91oxtCK+0iEF+KZViEyrCwKLH5UxuXkEgBsF1+jm/UDs7U
         eGx7tUIKNCfuL2SJbEIDers+Sg4Q7uqYUIkS0Avtl84J2mZ0+t6lM4MK/YdjqFy6Vpdi
         zO0BNv2GCZgOKpk7iNwha3AqydXlirsDquHnTwcTMo7OR2kOYonEgKWVwP9yFriW0ErG
         OP6SNTEe4EUyaT34oMBhBHclHSh0sFM6/9lVC6Vv4Czz7v9/sGSDhXQJqTpYj97AEclT
         M/2g==
X-Forwarded-Encrypted: i=1; AJvYcCWUyp5Ydpi+hmy/+P9qwRX/7qXXXNKf2li7IltdsycVkP6u2J49OFvulYOYDrYUgRX6so8tBYEcPao=@vger.kernel.org
X-Gm-Message-State: AOJu0YwGKTWoPqVMsWCFER3R/mPBTOq6JA3LIB8T9i74GeU7r8rAa+6i
	bva0TJVpmkNPfoaEv7h8/11DfweSi5eLQjIVaaPdsrazSPbcT4NIljg1sR/tyg==
X-Gm-Gg: ATEYQzyi8pexWWTcTLHjynLbVRNtBQt22GWZT0Gm+TMRGlnmu0S5qVXO7EdFKIk00zL
	7yx8XK1T+LeAUIzw4d0r27Ln+ADJYBYrY5jXuXL3fFsS7IQnriMUUNEoTYU/gFMkPqBjs53uKSR
	I9pUaPNAgByDAuIN6qJjn27w+BmcBhHMhCMQGSwy2Bf054WkFZzM9X0eVH5Mwl9NmGMDr9bzOjD
	1hRpr8r/FjG6OMXqZmvs9dseYp71GDe04e7vBKnXn/svv5i9Ido2q4iYAhl+61+1EBdEVUjtzaV
	KMEz119w4egBdIUNIZEXHC0rvvc8h5KhpWi/Sn0TswL3DKuMQ+5Ac0KrAVZSjA6qSuF/+z4d7YM
	zNOMHxsKEKmL/sJ2P9HEiPdNBiuHKXCsnCR9eeR5Pz9IVEC7qvK/jyTlp5ofVr73CfPZ4um0OTD
	QK4tbDdRIYV/rFjJL3TC8=
X-Received: by 2002:a05:600c:6217:b0:480:39ad:3b7c with SMTP id 5b1f17b1804b1-48519888c8bmr70433095e9.16.1772669733019;
        Wed, 04 Mar 2026 16:15:33 -0800 (PST)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-439c2f8c0e7sm13884101f8f.29.2026.03.04.16.15.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 16:15:32 -0800 (PST)
From: Askar Safin <safinaskar@gmail.com>
To: alx@kernel.org
Cc: avagin@gmail.com,
	b.sachdev1904@gmail.com,
	brauner@kernel.org,
	criu@lists.linux.dev,
	cyphar@cyphar.com,
	jlayton@kernel.org,
	josef@toxicpanda.com,
	linux-man@vger.kernel.org,
	miklos@szeredi.hu,
	ptikhomirov@virtuozzo.com
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Date: Thu,  5 Mar 2026 03:13:37 +0300
Message-ID: <20260305001337.3323169-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <aahG1Mb0oRBEG6sy@devuan>
References: <aahG1Mb0oRBEG6sy@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0F2402095ED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,cyphar.com,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com];
	TAGGED_FROM(0.00)[bounces-5235-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[safinaskar@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Alejandro Colomar <alx@kernel.org>:
> Is this the same as a "mount object file descriptor" as describer in
> fsopen(2)?  If so, we should use the same language, I think.

The term "mount object file descriptor" is probably confusing. In fact
fsmount simply creates detached mount and returns O_PATH fd, referring
to the root of the new detached mount. (Note: I'm talking about fsmount here,
not fsopen.) This fd is similar to what open(O_PATH)
creates. So probably we should just replace this "mount object file
descriptor" in fsopen(2) with "O_PATH fd".

The only difference between fd, returned by fsmount, and normal O_PATH
descriptor is that fd, returned by fsmount, has FMODE_NEED_UNMOUNT flag
on file description:
https://elixir.bootlin.com/linux/v7.0-rc1/source/fs/namespace.c#L4495 .

This FMODE_NEED_UNMOUNT means that when we close fd, the mount is unmounted.


This statmount patch refers to any fd inside mount in question. I. e. any
fd referring to any file inside the mount. This may include O_PATH descriptors
and, yes, descriptors returned by fsmount. So, current wording in this
statmount patch is correct.

-- 
Askar Safin

