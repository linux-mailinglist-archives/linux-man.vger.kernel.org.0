Return-Path: <linux-man+bounces-1381-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5906992B38E
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 11:18:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08B1B1F222FB
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 09:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8284E15530D;
	Tue,  9 Jul 2024 09:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="hZjN7VsR"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DC415443C
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 09:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720516708; cv=none; b=r4ofkXKA+G0R1MCG1gTar/Z6zzrzkbiPa05Em8eCK+8qhMF3SqEzXCec0jr0geu1ErCtFmv/KAkYJkZ34Ggavxx3LrHRhbOFczikw3x6d6khOU9/EjZjZ7JXGP+ZVzXcdrgZ4cje4QKdY4/tyI+V+xKpHkfOpApbxYxYDf6LFF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720516708; c=relaxed/simple;
	bh=GNMW3lRzkouEG40aapHdQ64DB+f2NeNuOuOUEguF6BI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R7TVR6UMbtLuEAaMii5jXTl+tie6fnK+LphnkcwnUTnonpVCKqUBlqhIm5VdQ3ikMWDtbWbXrntB5ZHN/ADMqZuP0XR3+ssrLV/UpIEd0r+EVfpvFmtKGwitK5GTjKQk0YvtLg4Er49znKbGqH5FD8tp3+YeljW4hpoy1s9VMUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=hZjN7VsR; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720516705;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pWKJrmykd8U4AE2jYppzosA7YcykK0cHnQ0nw6paA6o=;
	b=hZjN7VsRzOdUWrg/GbArqbJlwpGd+ia/VYa2/P1kvRhbAjXH797gfNwHv7zBtTFkOoWDiX
	Fbo6+uMqSKCofvryUCrpnqtQYJ0S+nbgSeXhXJjwjd3rBeyyrHdR4nW3GXym7xwaeEXyqS
	Z86uCYhQ+PaUuVaAKbrKluNQCkRpP7U=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-53-OC_SPZiCNRiHzmtFL-UUtg-1; Tue,
 09 Jul 2024 05:18:21 -0400
X-MC-Unique: OC_SPZiCNRiHzmtFL-UUtg-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 06D43196CDF1;
	Tue,  9 Jul 2024 09:18:19 +0000 (UTC)
Received: from tucnak.zalov.cz (unknown [10.45.224.5])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B8ABA195605A;
	Tue,  9 Jul 2024 09:18:17 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.17.1/8.17.1) with ESMTPS id 4699IEck2456961
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 11:18:14 +0200
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.17.1/8.17.1/Submit) id 4699ICja2456960;
	Tue, 9 Jul 2024 11:18:12 +0200
Date: Tue, 9 Jul 2024 11:18:11 +0200
From: Jakub Jelinek <jakub@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>,
        gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site,
        uecker@tugraz.at, lh_mouse@126.com, jwakely.gcc@gmail.com,
        Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com,
        heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <Zo0AU/3YFNIeEELE@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>
 <rh6sttlv3mpjgiktqcje5we7io5pnd24i7nt5yxi45nxjmcoee@mhuv3rq34mzz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <rh6sttlv3mpjgiktqcje5we7io5pnd24i7nt5yxi45nxjmcoee@mhuv3rq34mzz>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40

On Tue, Jul 09, 2024 at 11:07:59AM +0200, Alejandro Colomar wrote:
> > > restrict, as of what -Wrestrict warns about, seems a reasonable
> > > thing.
> > > 
> > > How about a [[gnu::restrict()]] attribute, similar to
> > > [[gnu::access()]],
> > > which is simpler than the qualifier?  Since restrict is only
> > > meaningful
> > > in function boundaries, it would make sense to have a function
> > > attribute.  We don't want a qualifier that must follow discarding
> > > rules.
> > 
> > If it doesn't have the same meaning as "restrict" then perhaps call the
> > proposed attribute something other than "restrict"?
> 
> Yup, I was thinking that maybe noalias is a better name.

Name is one thing, but you'd also need to clearly define what it means.
When restrict is access based, it is clear what it means.

If you want something else which is not based on accesses and which should
allow warnings in the callers, I suppose you need to specify not just the
pointer but the extent as well (and maybe stride) or that it is an '\0'
terminated string, because if you want to say that for
void foo (char *, const char *, int);
the 2 pointers don't really alias, the size information is missing.  So,
shall the new warning warn on
struct S { char a[1024]; char b[1024]; } s;
foo (s.a, s.b, 512);
or not?  Or foo (s.a, s.a + 512, 512);

	Jakub


