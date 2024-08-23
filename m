Return-Path: <linux-man+bounces-1672-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F21795CFC1
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 16:28:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECB2D28249D
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 14:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503FC1885A8;
	Fri, 23 Aug 2024 14:11:47 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from relay.hostedemail.com (smtprelay0010.hostedemail.com [216.40.44.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F2A16B391
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 14:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724422307; cv=none; b=jKjKXPyQFYeTq2DbVhBiFmmjoS3yMNh9H/MnaGse6lE4jELtsLv3xHsWyJqevSE7VrVB8SRpscN5Tyvup/Q6ks4bHS3a2RvTRzqXu8C5E2ibAue9Ne2jVmEONPffcmwNG+H/Akxvlbtir8JNNGAX577Waa4UnfyajX/gADyyVqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724422307; c=relaxed/simple;
	bh=uMzoWyXz7/TRn9bMpGOPwZWblqOrMSAFs0lrFMfcXVk=;
	h=Message-ID:Date:MIME-Version:To:Cc:References:Subject:From:
	 In-Reply-To:Content-Type; b=jv/Tu4F1m0gA9ZrOP66GiflBB1viQatyohM4v06WWLr1SKatfABl49ljF6D1JSd/Pvot+6RDL0Pz/f022w8IcvqUd97dbUnRAslDZWbRYvVocVEOtH6vfDzJ2AY1FSGHY1kYGy0yEW5zcPltgIucrsj7H/Z3cvnWABY0Ewhe3z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=SystematicSW.ab.ca; spf=pass smtp.mailfrom=SystematicSW.ab.ca; arc=none smtp.client-ip=216.40.44.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=SystematicSW.ab.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=SystematicSW.ab.ca
Received: from omf10.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay05.hostedemail.com (Postfix) with ESMTP id 9A2FC41DBF;
	Fri, 23 Aug 2024 14:04:24 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: Brian.Inglis@SystematicSW.ab.ca) by omf10.hostedemail.com (Postfix) with ESMTPA id E6EBD32;
	Fri, 23 Aug 2024 14:04:21 +0000 (UTC)
Message-ID: <331b41ea-dce5-414d-8588-9e4e2a59dedd@SystematicSW.ab.ca>
Date: Fri, 23 Aug 2024 08:04:20 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-man@vger.kernel.org
Cc: carlos@redhat.com, dj@redhat.com, eggert@cs.ucla.edu,
 jens.gustedt@inria.fr, libc-alpha@sourceware.org, rcseacord@gmail.com,
 vincent@vinc17.net, xry111@xry111.site, alx@kernel.org
References: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Reply-To: linux-man@vger.kernel.org
Content-Language: en-CA
From: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
Organization: Systematic Software
In-Reply-To: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: E6EBD32
X-Stat-Signature: 3kzwgersmrhmd1dmz793ggghc1jpbe7n
X-Rspamd-Server: rspamout08
X-Session-Marker: 427269616E2E496E676C69734053797374656D6174696353572E61622E6361
X-Session-ID: U2FsdGVkX1+/ZbnIJIuX3cBj067XfHg7Ml0egMC0wKY=
X-HE-Tag: 1724421861-557732
X-HE-Meta: U2FsdGVkX1/coiYFMkhaiKAjBCxObVBmkgbiW1lkSkUIkiQQgYFI6VOK/w6KSEAODyZvuj9ZtryeJVwYgjLXp7upDuhTAiKJP2cSwZdkKay+yzpUqHSHvvaoEkFqWsyD7/varKX2o6AH1PH6slKC1ggeKeg7Kf8Q6rqt9njYjxkifpipSXi0FRyyOk9T3iTsu2L6oN+MdKMW+I/yYrvx6WCrLgUGJqPH1AMQD0PV3b8TE+V34oeShW7nfmyWOPG66LViJRDkUs14AhDasPer7NSChplzq9gshe3+z5+Yxc55BRgyirYKASd+DfMhotMpi6/kWxdtLautZmLn4+/I3oIl/cqkChhv

AFAICS from 9899 1998 Draft to 2023, the *mktime* wording has been essentially:

"The original values of the tm_wday and tm_yday components of the structure are 
ignored, and the original values of the other components are not restricted to 
the ranges indicated above. On successful completion, the values of the tm_wday 
and tm_yday components of the structure are set appropriately,"

so the recommendation has been to do something like (pointless example):

	time_t tt = time(&tt);
	struct tm *tm = localtime(&tt);
	tm->tm_wday = tm->tm_yday = -1;
	if ((tt = mktime(tm)) == -1 && tm->tm_wday == -1 && tm->tm_yday == -1)
		error(...);

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry

