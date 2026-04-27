Return-Path: <linux-man+bounces-5416-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOdTAT5l72kIBAEAu9opvQ
	(envelope-from <linux-man+bounces-5416-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 15:31:42 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 65895473748
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 15:31:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCB673037DC0
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 13:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35B393CA490;
	Mon, 27 Apr 2026 13:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Hs0P7UIb"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984E13C13E0
	for <linux-man@vger.kernel.org>; Mon, 27 Apr 2026 13:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777296583; cv=none; b=srmRjOu9ZhVtPAY4uypByrceQYjozd1vfnyK7HM/4t2G82DbigrTbHzo1YjVBbVymiVMs5is5LZ1dgXVPjYlIbiBUNzmTkPDHJWiHq4X6wVsjwnRQHwm1egLuMo5633zI9hbDvkmCEhdp6EmXCYfgcdLn89baEImBociiYUiNZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777296583; c=relaxed/simple;
	bh=72Vj0K0ahYjiIGlZw+3HO4C99x6D7GIrI8KmI+R3XqY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=IBXeABuXYOQf9OjmtvPRlkPQlUq6Xy9X/T0kHFGiapfi3VKIqBijQ7U4gJD9T6ukez3JLAXSnGq0OtJSMIRnj/7SmdLY5WQiiymMC9yjxuaPjbppoLkDHUD7DTm80jwiTmlIKhd+AfRyEeGml/yBx9sao8FS1KyOWzGBbKpuONY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Hs0P7UIb; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777296580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IiAO0uEG/jiG1zpDR09OVtbsVYFleUsY0hDNg9xxJe8=;
	b=Hs0P7UIb5J+T0pXEIAG1qpYf0+bWVXdC+VkUOd5euPfMSgGYetKqX6qKJoV35zfThfZTYy
	WsV21t24kxNk/wEjxLMNJc7boKVBoWyKUuiOvH2ST5rdbYApSF3THxhtld9VcM+nC8WiLA
	IMbD3J7hkorqB4a2PAosiT3AjblHB8g=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-479-jkM-qN4wNLOUE0SH86uuDQ-1; Mon,
 27 Apr 2026 09:29:37 -0400
X-MC-Unique: jkM-qN4wNLOUE0SH86uuDQ-1
X-Mimecast-MFC-AGG-ID: jkM-qN4wNLOUE0SH86uuDQ_1777296575
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1FB4718001D6;
	Mon, 27 Apr 2026 13:29:35 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.44.48.4])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10E0B195608E;
	Mon, 27 Apr 2026 13:29:32 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Dorjoy Chowdhury <dorjoychy111@gmail.com>,  linux-man@vger.kernel.org,
  brauner@kernel.org,  jlayton@kernel.org,  libc-alpha@sourceware.org,
  linux-api@vger.kernel.org
Subject: Re: [PATCH v2 1/2] man/man3/errno.3: Document EFTYPE error code
In-Reply-To: <ae9gDtEo6OxHTYBt@devuan> (Alejandro Colomar's message of "Mon,
	27 Apr 2026 15:13:07 +0200")
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
	<20260426111707.36541-2-dorjoychy111@gmail.com>
	<ae4K_5f1g3zgSNkC@devuan> <lhu5x5c4rpl.fsf@oldenburg.str.redhat.com>
	<ae9gDtEo6OxHTYBt@devuan>
Date: Mon, 27 Apr 2026 15:29:30 +0200
Message-ID: <lhuv7dcy1j9.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Rspamd-Queue-Id: 65895473748
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,sourceware.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5416-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fweimer@redhat.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oldenburg.str.redhat.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

* Alejandro Colomar:

> Hi Florian,
>
> On 2026-04-27T12:34:30+0200, Florian Weimer wrote:
>> * Alejandro Colomar:
>>=20
>> > [CC +=3D libc-alpha]
>> >
>> > Hi Dorjoy,
>> >
>> > On 2026-04-26T17:14:25+0600, Dorjoy Chowdhury wrote:
>> >> Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
>> >
>> > Thanks!
>> >
>> > 	Reviewed-by: Alejandro Colomar <alx@kernel.org>
>> >
>> > I will wait until glibc adds this error code to their <errno.h> before
>> > applying the patch.  This means either you should write and send a pat=
ch
>> > to glibc (if so, please CC me), or you should ask them to add it
>> > themselves (if you're not comfortable writing glibc code).
>>=20
>> I'm not sure where this is coming from.
>
> Here's a link to the thread:
> <https://lore.kernel.org/linux-man/20260426111707.36541-1-dorjoychy111@gm=
ail.com/T/>
>
>> POSIX says EFTYPE was rejected
>> in favor of ENOTTY.
>
> Could you please share a link to that?
>
> Anyway, I guess ENOTTY would be inappropriate in this case.  Although
> maybe a better error code could be devised; I don't know.  This is why
> I wanted glibc involved in this discussion before this arrives to a
> Linux release.  Thanks for the quick feedback!

It's in the Rationale for System Interfaces:

=E2=80=9C
[EFTYPE]
    This error code was proposed in earlier proposals as "Inappropriate
    operation for file type", meaning that the operation requested is
    not appropriate for the file specified in the function call. This
    code was proposed, although the same idea was covered by [ENOTTY],
    because the connotations of the name would be misleading. It was
    pointed out that the fcntl() function uses the error code [EINVAL]
    for this notion, and hence all instances of [EFTYPE] were changed to
    this code.
=E2=80=9D

I replied on linux-fsdevel, too.

(It would be nice to submit patches introducing new error codes to
linux-api with a subject mentioning the error code.)

Thanks,
Florian


