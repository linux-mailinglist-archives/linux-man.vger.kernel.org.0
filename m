Return-Path: <linux-man+bounces-3248-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD76AFF691
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 03:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76CC11C47CF4
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 01:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C9E727E7EA;
	Thu, 10 Jul 2025 01:58:52 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from newman.eecs.umich.edu (newman.eecs.umich.edu [141.212.113.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A5642AB4
	for <linux-man@vger.kernel.org>; Thu, 10 Jul 2025 01:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.212.113.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752112732; cv=none; b=K6g9rNLQeBNmPIJBRslplbAr/r9GVKCDj+N6oK44/8byiY78YBsDIkYboRkpvkU/8MXXBSOe9WUZ/jhQsPkrwUKmgZ3uYy099p1QKvJrTFvqsv+aHO0av+HAyCqZjZ6P5A1a7Sbj+OlkKbZEcroYtPljW5VxK6BocwY2BfE6sfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752112732; c=relaxed/simple;
	bh=QWQJVMc3iN4aDLqI0VW6L7DG/UsYv4yjbnthu9PAzLQ=;
	h=Date:From:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=m1H42YQSGuAfD1S+Dl9/KoZ1DRjsCYkmi+ctXbTWjJqF/LDPQcgZlgY84dQr+RBebsVXm8YbZcFL/To8XTTjWlG2q4YNJT0Q11/O9wsJuQkTb6oLywC0yxL2Mutz1wsQxDHeAZ11DrCmHlu3NrJ3oXpp9G4u035m6BcP9A2MzZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eecs.umich.edu; spf=pass smtp.mailfrom=eecs.umich.edu; arc=none smtp.client-ip=141.212.113.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eecs.umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eecs.umich.edu
Received: from email.eecs.umich.edu (email.eecs.umich.edu [141.212.113.194] (may be forged))
	by newman.eecs.umich.edu (8.15.2/8.14.4) with ESMTPS id 56A1toTs1511843
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Wed, 9 Jul 2025 21:55:50 -0400
Received: by email.eecs.umich.edu (Postfix, from userid 36916)
	id 99C7112A0546; Wed,  9 Jul 2025 21:55:50 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by email.eecs.umich.edu (Postfix) with ESMTP id 98FE912A025C;
	Wed,  9 Jul 2025 21:55:50 -0400 (EDT)
Date: Wed, 9 Jul 2025 21:55:50 -0400 (EDT)
From: Terence Kelly <tpkelly@eecs.umich.edu>
Reply-To: Terence Kelly <tpkelly@eecs.umich.edu>
To: linux-man@vger.kernel.org
cc: Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: for man seccomp
Message-ID: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed


[forwarding to linux-man@vger.kernel.org per Alejandro Colomar]

I'm writing to recommend that a pointer to a recent paper be added to the 
"SEE ALSO" section of the manpage for seccomp.

The paper shows how to construct a MODE_STRICT sandbox for "filter" 
software such as compression libraries --- a limited but important special 
case.  It also describes several potential weaknesses with seccomp-based 
confinement.  Both the paper and its code are permanently archived in the 
ACM Digital Library, and both were reviewed meticulously by experts 
including a Google Android seccomp specialist.

https://dl.acm.org/doi/10.1145/3733699

Enjoy!

Terence Kelly
tpkelly @ { acm.org, cs.princeton.edu, eecs.umich.edu }
https://dl.acm.org/profile/81100523747


