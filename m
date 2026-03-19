Return-Path: <linux-man+bounces-5277-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOz3Exppu2kbjwIAu9opvQ
	(envelope-from <linux-man+bounces-5277-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 04:10:18 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CDD2C5502
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 04:10:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 945293004254
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 03:10:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E58F31ED68;
	Thu, 19 Mar 2026 03:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qgi5s9m9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4C740DFCA
	for <linux-man@vger.kernel.org>; Thu, 19 Mar 2026 03:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773889814; cv=none; b=LwPqFV0viv4vpg/AElhoYPLYkU1lKD8ccPq+fw048t1LT4pj2iXiI4SOy5pdYcT27im7uW5UdMlBJL8E8WKTt3gKqcfQx0JEEuIp6j/vGKusEW4zaNrdgK4wXIouV6FoaTMB5Ye48R/gZ+htBeflERdfFYRQocEqsOQa3XNfO/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773889814; c=relaxed/simple;
	bh=V7LsMOXdNP4ag4mMHUhVEMECkmI7PuTtfqlX/VbyifM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WX5sG68rxvi5Gj7eAKtvmz8fDbChZdAmfad9uG3r92H3l0NpRyY9aFt8IaRo5ExdNvKvxoZKQvvbnoapSzrp1tS3GaLzz4ckYM801yL3AP7NZPyOJKAjWQ/5n/LqgU3mjg2p7mLx3DvOKdoNs90oLtGYlC/PfAiezP65swsK42c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qgi5s9m9; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c73fbdd9b53so162808a12.3
        for <linux-man@vger.kernel.org>; Wed, 18 Mar 2026 20:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773889813; x=1774494613; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pSKx82wrZPSWC0XejhYZEORwYbAwMIJuBEdylwyqAr0=;
        b=Qgi5s9m9A8UruIVoLPodQkCiRk1Bsj4jZeGHc39+rEbkV0BbzV1Cjmh0bjjrarFiba
         tqRarGdIxFjn4Eg7X2GOnEDZYM06b+7TNkoh/jbn0h/cLX5N4Eq9KceWaUpcUpwlYcCg
         vWtMrB/zPNLrBQ7wCUyw8Fm3HVCZwFSsyTthCXZeotVRoCSyDjJ0wnnhooFYFH3/kmwt
         Ln8QMjIK/ezPzgpQTreWiyYt8+XV2ztcqTf/oyHA0PCBroL51lXt1yllZ9ckLCc4+PO+
         22pf2g9uPIDZX/bB4nZJlcz+rnpSmXpOtYWQo6aoY3bOhgU6r7gvwLojl0zOntxSdvv7
         Ffbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773889813; x=1774494613;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pSKx82wrZPSWC0XejhYZEORwYbAwMIJuBEdylwyqAr0=;
        b=qSdX1mXsleoOVyU/8v63Lv9Rg7KY68G9QpBuwwW4lvu8lzM7ymOPGyXEiaL86MpuhZ
         k6T7lHRjIyUoQIM0aQnhOcKudZ/asZBi2Ipprwlsq6idT14cq1AIbJ/RoaVBNMsjWU/B
         5bazEHzBRYvfq9+uMh46OwKVUEMQ8qn5OTK4z8K24rC36S5HdQLLkSDMJe2ezdqigw/T
         05DbnqkpqKivo8R8r73QSMWWzYnfSf3tDTI0/ONkI5ETmRuF/sPQsgxhl0vksWDa1VGp
         UesxPyFGf33u3MiqCPDYk3jbdFzsJkwVbznietiw55syJKIV8OqqXTjMQ6l7trQG+ldu
         dPkQ==
X-Gm-Message-State: AOJu0Yyft+00/nJt3kh7B/kHjOy9a70n6TwnWub8uOlu+bW//AvyTED4
	De/a882i11mkqqEd3o3DWrDeYOZt2POcC1VZOP0hJZlkSbnPtHIeocKv
X-Gm-Gg: ATEYQzyoVzzGw/xWsy5ITQCudQeW3+S/oSQzs2PsUkhW2HWbXaVGUCHvRZJHSMX3e8W
	kZV0HX8mTyUip4iwc8m9PoTgxAQWgTaGNhzeIzQ+EGBZhYVxkQBRK4PdnBdKDvOpEcAJ7IgoWHo
	ZMaER/dCSrlpIkHwt+gO8tivE44fhL+O1Xn7609ni4ZoaC/ErgzoU2KITmQtlQq5EG5Qth3GPf5
	jHcJ7fKdNMZbQYjORkrgoTC2lX7veH7pCEjO4yc3WflRUvYM2hWIQzSlNIatisYWXxMlVarGqGy
	q3CH/Odh9tUvZsc9dNIhU1MRDxFo9clzD5NEGGN21AskhivWnEl02A9nsV5ruFjNbOnpewW0F9/
	coeOJiAVpndodR58BFnp74+S8Drn47SkI8ax8LIxYR9kD91bcXZt3xfifqQSEZhEn2JmMQdBSRD
	yq5RjARjF3rbKqYJd4llwD
X-Received: by 2002:a17:902:ef4d:b0:2b0:6e8f:8e79 with SMTP id d9443c01a7336-2b06e8f93a5mr61081185ad.42.1773889812981;
        Wed, 18 Mar 2026 20:10:12 -0700 (PDT)
Received: from Misaka ([2408:8340:2640:1b81:ea9e:b4ff:fe12:dd0b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e419a26sm58874205ad.12.2026.03.18.20.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:10:12 -0700 (PDT)
From: Ben Song <bensongsyz@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: Re: [PATCH] man/man3/strcmp.3: replace equal/less/greater words
Date: Thu, 19 Mar 2026 11:09:43 +0800
Message-ID: <21b3ebcd31a6f53968e2f987324d7d0c58c5243c.1773888846.git.bensongsyz@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <abdLnYA73AoL6e3P@devuan>
References: <abdLnYA73AoL6e3P@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5277-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[bensongsyz@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.955];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C0CDD2C5502
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Please don't go past the 80-column right margin.

Got it, I will pay attention next time.

> I think I prefer entirely removing this list.  We should defer to
> memcmp(3) for the description of the way the comparison is done.

Yes, the newer version is more concise, and the description I wrote in
strcmp is actually the same as what memcmp(3) describes.

Best regards!
Ben

p.s. Sorry for sending the reply mail to the wrong address. at https://lore.kernel.org/linux-man/21b3ebcd31a6f53968e2f987324d7d0c58c5243c.1773887744.git.bensongsyz@gmail.com/

