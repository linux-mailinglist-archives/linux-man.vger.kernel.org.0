Return-Path: <linux-man+bounces-5639-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNqbAOxvHWqWawkAu9opvQ
	(envelope-from <linux-man+bounces-5639-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 01 Jun 2026 13:41:32 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 970E561E7C6
	for <lists+linux-man@lfdr.de>; Mon, 01 Jun 2026 13:41:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D88E83009CFA
	for <lists+linux-man@lfdr.de>; Mon,  1 Jun 2026 11:41:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8657236BCF2;
	Mon,  1 Jun 2026 11:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ecq/BFgT"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA89C81AA8
	for <linux-man@vger.kernel.org>; Mon,  1 Jun 2026 11:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780314087; cv=none; b=A7qx/6Heu+xyMfEbzJM8VwysZVgCnfqyjbS+MGalVmjSJdCzXRXc/SNvfGg21R71ykVJGcHkkjMakEF4idg1viUcek+5UU9XXzrofilzXJob7Kb87o1Az7kAczu/aaBnHG1SuvUKTPXGIKCs0ZYBZvQpqq97/Bm+E0VCjNYOuL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780314087; c=relaxed/simple;
	bh=iJsGAGlPkg/B0pVWYlD6Q6JsWCUE97MILhVBvQfWdsA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=RXWq6dj9ZdUx3lvPBSC972qVQ9Uua0h6qP79L2UbNPKfH34Aes6PB4FSPXR+SWfKvM3iSoDlkrFypLSUrevKAK/krtlHp9eDihIPi8dTs9vbtKiWuXxOFd22XWdrUrQUoq12MIko0FC3XT7e4/I3s4iBny9shkhLGQWbsHeAoo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ecq/BFgT; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1780314084;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=scxpqRpLdSyWr45VtBx1wy6WYcoA5+jM+O0vD+vZxZU=;
	b=ecq/BFgT+LmaTEjyNBrcswrg9F2Jx/g/92EnxRMEzVOqtOb/O4FYE23Z9eFjDhlDk7XWc/
	bNNUd3Lg6/3IOvIhAjfSnP0nP/J/f872d+OJLUaZRe3i8URvB+j90tfQp9VGYvVVvU2kEN
	NgvK2szqQIuNqZTAD3S9eLOQc342+AY=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-453-FJDNsdliNMuUyWl3td35fA-1; Mon,
 01 Jun 2026 07:41:21 -0400
X-MC-Unique: FJDNsdliNMuUyWl3td35fA-1
X-Mimecast-MFC-AGG-ID: FJDNsdliNMuUyWl3td35fA_1780314080
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BC3DE1956062;
	Mon,  1 Jun 2026 11:41:20 +0000 (UTC)
Received: from oldenburg3.str.redhat.com (unknown [10.44.49.199])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E4A5B30001A2;
	Mon,  1 Jun 2026 11:41:18 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Alejandro Colomar <alx@kernel.org>,  libc-alpha@sourceware.org,
  linux-man@vger.kernel.org
Subject: Re: non-standard const-preserving string APIs
In-Reply-To: <0c1e8b52-68d3-4be4-84aa-8ab5bdfee29a@linaro.org> (Adhemerval
	Zanella Netto's message of "Mon, 18 May 2026 14:19:46 -0300")
References: <agizh06CdDnhDvAB@devuan>
	<c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org>
	<agnIOfwI5KKGwS_I@devuan>
	<0c1e8b52-68d3-4be4-84aa-8ab5bdfee29a@linaro.org>
Date: Mon, 01 Jun 2026 13:41:16 +0200
Message-ID: <87h5nmo5cz.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5639-lists,linux-man=lfdr.de];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fweimer@redhat.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sourceware.org:url]
X-Rspamd-Queue-Id: 970E561E7C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

* Adhemerval Zanella Netto:

> On 17/05/26 10:59, Alejandro Colomar wrote:
>> Hi Adhemerval,
>>=20
>> On 2026-05-17T09:22:41-0300, Adhemerval Zanella Netto wrote:
>>>
>>>
>>> On 16/05/26 15:15, Alejandro Colomar wrote:
>>>> Hi!
>>>>
>>>> I'm working on documenting the recent API change of strchr(3) et al.
>>>> to adapt to C23.  While doing that, I've realized that the related APIs
>>>> that are not standardized by ISO C, such as memrchr(3), have not been
>>>> changed consistently with their relatives.  Has this been discussed?
>>>>
>>>> I think the inconsistency might be dangerous.  Should we change the
>>>> other string functions accordingly?
>>> I think it is reasonable to support const-preserving to the GNU interfa=
ces as
>>> well. Are you preparing a patch?
>>=20
>> Yup, I will.  Thanks!

> I will try to take a look, but I recall from previous weekly calls
> that Florian has raised objection that this does not solve the
> overflow issue (not without further extra changes).

<https://inbox.sourceware.org/libc-alpha/lhums05zjuh.fsf@oldenburg.str.redh=
at.com/>

> I am not sure if he still keep his objection, nor if it is would a
> blocker for this new api.

I still think we should fix it.  Maybe rename the =E2=80=9Cdone=E2=80=9D va=
riable in the
vfprintf internals to =E2=80=9Cssize_t=E2=80=9D, and then gradually fix the=
 compilation
failures, investigating whether the change is correct in context.  We
need to add some early bailout in case INT_MAX is crossed for the
non-aprintf case.

Thanks,
Florian


