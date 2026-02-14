Return-Path: <linux-man+bounces-5130-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PhHYFuNhkGk7ZAEAu9opvQ
	(envelope-from <linux-man+bounces-5130-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 12:52:03 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFE313BC4F
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 12:52:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B0BD1301CCED
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 11:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B81246BA7;
	Sat, 14 Feb 2026 11:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZU+G6uXX";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="IKLBrhoB"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BCF3C2E
	for <linux-man@vger.kernel.org>; Sat, 14 Feb 2026 11:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.133.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771069918; cv=pass; b=tPLOzhkoVk0fwQRNn/YqErCjtOGTHz4TODDRydJGJRB3tdQP81wzESKzv9wRvZuwPGAHGZ9vLE6OKYZ1cu6CAcBZO5oO3LYa0ISLh66Az8geeymU2Tul5MiLiqSc6ZxMts9QnDT1OvS5VcEFvob+CijQzm+pkSYTa3yc8OFBsUs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771069918; c=relaxed/simple;
	bh=GPVrSBBKUtcdTVRv9IjOsuJ0ZXmiEXP+I69F3+aDbGo=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=U3EVejt0+JkGffH/1ogmY96pjYp4Lx2FmvoIA+RPfoAbK5dEZj8a0vTgHSG9CeMk/fL7B3OCoB5ZlUBVOQgpWlp5VMutNKCeUTNesNg97rcgAOldYeoy5T7nzasvTXx2YTEoZT/2q7vODbryiGGtrXrbBHyfukVhysIPrnZcMHI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZU+G6uXX; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=IKLBrhoB; arc=pass smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771069915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Zixv6poNiOCHuVbg45l8FeodrH6nAEcukrqT4qbrJag=;
	b=ZU+G6uXX89A3NPG7ebfnZK2nc49iZH2vndd6MOKS3H2DqsePtAOn/DHD0Ya0jPQ+8WVvQI
	13FAwMal/BZhnTIe57c3ujAwlIeK83KcGTp1H3rZp1VTveGYVc4tg59uYqGUmYFWC6E5fc
	KcOVKJgWIzNNqzC9h++tDMjeK4GaA4c=
Received: from mail-yx1-f71.google.com (mail-yx1-f71.google.com
 [74.125.224.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-442-L7iArMnzNEyA5tp2TZlNDQ-1; Sat, 14 Feb 2026 06:51:53 -0500
X-MC-Unique: L7iArMnzNEyA5tp2TZlNDQ-1
X-Mimecast-MFC-AGG-ID: L7iArMnzNEyA5tp2TZlNDQ_1771069913
Received: by mail-yx1-f71.google.com with SMTP id 956f58d0204a3-64ad0e5cddbso1960825d50.3
        for <linux-man@vger.kernel.org>; Sat, 14 Feb 2026 03:51:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771069913; cv=none;
        d=google.com; s=arc-20240605;
        b=MEJnMqgon4XDjYVE7tIvRGeqAXmkiNiFI7GzgSdbFylItPf/CyUFlCcQ2ETijgvt8f
         2wxCWYG/7dZAeltI///RX4xjUJGu4+8FTZnEbvJIXQXqpAqUcYIpf1snisG2U9cvyXJq
         3nOeRPj13UXVau4o+QV4bD8q+p60zaI2CsUtf18fgmDAEpvt5eh2/FnA2grhsIv29Mvz
         gXLtXBIHwG4UkmQYOgkZ+MpwSUs5xhG4+rh8676WyOnlTyfuiZ4BI4V3d5ec1v5gP4O0
         CEebRoutRoXU0HggvDpLKcaI/6hEaEI1tpQZrhqX7xx/t45PJwBNcASj6XOP7peodXi6
         oVzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Zixv6poNiOCHuVbg45l8FeodrH6nAEcukrqT4qbrJag=;
        fh=OclAtLKJTQTIvPXBcbgjquIcuF1L0TED2I15vb2Dds8=;
        b=DwT0QJJbdVVN3zYLzTpW0OK+ZziKazL+Wahd2cqzPaF0m4/Ba22dVVrl0UfYmVcujm
         UVx8M4ubBWCMu0R9ZujHfW+lVSxbciuH6uPuGPqL6Xf+6pRkfnBWnv1aBGEzwBfKO3OI
         +tjNczD4hDOIlg4qNYZ4k1iw9EqzKmSVergSlfZB67S5QIqsUg6dOtqHLjpn2KZ2oAca
         BC7PWJapAgJbtPANbyrlBBwh/FbFZxfWRNrmCVM65FeZlOHRmTE55ix4ieyXWXc7oA0w
         8I3VyGx5sjMVs5f4jJhKQtHUgKb4f02Kd/rmlgFz2rcrRwEwlinay7X1LGXmDuGwb/Yc
         bD1w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771069913; x=1771674713; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Zixv6poNiOCHuVbg45l8FeodrH6nAEcukrqT4qbrJag=;
        b=IKLBrhoB5h6uTsC5avFzEieM0Qmrt+7r+eFMgt85lbhOnWSGtXzlFt/fqGSw9U2PAK
         V3ICk+Pyvzp+LPXDHMGjUoNlfWQGpxXBU3+u6236G31ONEvh8hx4Maeohgj684NJKZu3
         Uajsqh4wNsvSYHJUK7P0G4WWDmOefoHlEdAKBSFJZCEZyEfSu3ylvbQ/JhMpa8hZEDLY
         BuLDnfkO9T2XEJ04A1XF1VYFLBLmnfALwQstxV5U1uZ3qEvVaokwfRl99Cv0v+iMOIUN
         +67ZsEeoNVbsXjh+rphUEvu36lpSya52HQEPevBP12ChgMEYqd/rTorq7FjwEuzFoZzE
         /OWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771069913; x=1771674713;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zixv6poNiOCHuVbg45l8FeodrH6nAEcukrqT4qbrJag=;
        b=urZWcRY/fI8RS14yBprft8+YClg0cDli4uJW8uDDL4Qn8dNZicA5lKJFJiN+0Sk8JJ
         XOw19evj2ODJgac/dfMRqQYhX6ZgCWbPVxAjJzxrA6+utvY+NaF7AqlEiFdjEelv/g7Z
         eWRsU4syILrDbnpcylJTPSQugznHYd8kytqBUG/Bwq4BDPkOksjZUNElfQd1qLQJg5b2
         xYCpor7kJ0XGTiexEh8U8Y7CFYyR3q7WoeN2QmcN+BRBJhfbK84ss3kzzHqAACcSpDCU
         c0/uXuUMGvOM+Wmid2PwR4DWyWtV9HZ964AMbK0Z4Mrf1x7qw8Yzj5PHEgWQT+/5IbGy
         a6PQ==
X-Gm-Message-State: AOJu0YysCTkejNNJO/TIwuS4T8RL7cWgtQ1X0PaTyCItcroLDfYzHYYO
	U97E1PlrfOHAeMCyXmvSNi86f0My6DB8ouV4JWrFf356u4UD4ymFNYV2iIGRxUrtz3ubORhwEGs
	0gniHS3LsXv5ZV/tkYodMh5TTv8kV+y/ZQvoOC9ALb0/W6nOuc4JAspNhoxLiRwsWXprnUGfMXe
	JZ4o5Ua4Uhf0akfNG3cTZvTD9lyfKvjlvXT0vrl416PmltHP0=
X-Gm-Gg: AZuq6aK2VTiaYfvG5DRl/z/Rmc+3urMp3NQGeldPZuPeSOHRJRVc80ocwZqkuccz6F2
	d0yexl26VMGFjcBr8bka7E4RO9dAC7w9NZJ/9Ms+6/93Idbmv60mfM71pnQE3Tz2mPMZjCp9g3e
	ZCO2UIQZzHXAOlm/ghR6jgIyzN1iVoNmvJ6TGnGlV8rViv97QgooSeBB6BwgrWtAevxzP6u7+GM
	YoLWS/Ufaq2ZozAUIWj6SZdupv0NRp5Ciizoq/FlHoSWzvyjhaMp3rRnNAh4ktjbbM=
X-Received: by 2002:a05:690e:b46:b0:64a:e35b:b431 with SMTP id 956f58d0204a3-64c21b7fc2amr1716291d50.83.1771069913027;
        Sat, 14 Feb 2026 03:51:53 -0800 (PST)
X-Received: by 2002:a05:690e:b46:b0:64a:e35b:b431 with SMTP id
 956f58d0204a3-64c21b7fc2amr1716281d50.83.1771069912567; Sat, 14 Feb 2026
 03:51:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Jonathan Wakely <jwakely@redhat.com>
Date: Sat, 14 Feb 2026 11:51:36 +0000
X-Gm-Features: AZwV_Qjt6A4huFmGQHjDlfGPCJJxWuN3gwZv33RtSFEKDwQ-sUQ1L9Bdl1GCKIs
Message-ID: <CACb0b4=GZ_pCtuVNTmo9v3XhKVzBB-08xm=af+Ju=iE4Uc_uWQ@mail.gmail.com>
Subject: Should aiocb(3type) say something about the order of fields?
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5130-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jwakely@redhat.com,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,man7.org:url]
X-Rspamd-Queue-Id: 9EFE313BC4F
X-Rspamd-Action: no action

https://man7.org/linux/man-pages/man3/aiocb.3type.html doesn't tell
you that the order shown there is not the real order used on linux. It
does tell you to look at aio(7), which says:

    struct aiocb {
       /* The order of these fields is implementation-dependent */
       ...
       /* Various implementation-internal fields not shown */
    };

I think it would be helpful to repeat that in aiocb(3type) so you
don't need to go to a second page to get that info. If aiocb(3type)
shows actual C code with a struct definition it's reasonable to assume
that it is accurate, which isn't the case here. The comments in the
aio(7) page make that clearer.

The Glibc manual
<https://sourceware.org/glibc/manual/latest/html_node/Asynchronous-I_002fO.html>
just names the fields (not showing an actual struct definition) and
doesn't imply anything about the order.


