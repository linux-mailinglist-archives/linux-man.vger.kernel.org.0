Return-Path: <linux-man+bounces-5332-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPVpMj7V32mYZQAAu9opvQ
	(envelope-from <linux-man+bounces-5332-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 20:13:18 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 550F0407012
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 20:13:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4FB493052FE7
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 18:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B22C3E51CB;
	Wed, 15 Apr 2026 18:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Fi9x2Y4O"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DAF3ED5CD
	for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 18:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776276793; cv=pass; b=Yp4wMn1v8TqRf+1+kPWuIpLoUhP9jnYhJWCpaEhsLxYtPLqh065jAB0ClF6seWwG33yNW0E/v4uUcqrMr5uAQQeF6sW4w7LSxSuAH5JIRwdt1XgmtYNNsyV/IUfK8Xm391ehWg3OpeGZxJUYEgnOSLNcWGzvALFfLrdN+3cxMK8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776276793; c=relaxed/simple;
	bh=tw4JsIRgNA95rtN16CE4Ld+ZoGP8SHFrVn6K4h0AWbA=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=AYlEoEIWnVo4OgnuYSg9/CZiwFKho/grt9KUWKgqLF4C0zULllJLwaGXhn5NS5Z2nuJVfd+pYdyOmPSfP5aDs40eVmdCT5LB35A0SjO3j0kEDQzxm810YEKDgu7WH0mXky6s769kFVTIoj9ILEIRWMJEPNf/LGvS9B02uOXHO4k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Fi9x2Y4O; arc=pass smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b9c603ec2dfso930091566b.1
        for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 11:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776276790; cv=none;
        d=google.com; s=arc-20240605;
        b=ZXCkuyoDHgHFEuUfh9ZGQbSMeEGUx8smtmbLwRxjMpF4C9heXXwk7HW0BkzSVPC3Yk
         PV66Yj1j6dtZ+TCqePox7uSZU1zrlXVCLHKrQS8ZLxesdKRcWk9k/809POwhxsieTflH
         6II4R+RLWJ6eX4aHTogGFkmdZb5GloUtq3lYUnaXpuK/Szmay4wmsuDbK5caEBSAtaM9
         eESeOlQigNg3v+C3rrTy4CHSPjfDDKtSmBFg/X/ukF58nuv2beb7z1S0XGdJVF4v06vv
         bLHqY5TNd6y+/qniROC8h4+61yHjqOi6kCmvfZW6sKr2O9sFJtHI6kE5Y/YCSfO8aFYi
         E84A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=9gRhiia4833DxzrvqZL9qr7QlaMy53ONYU9XsjC12CA=;
        fh=OclAtLKJTQTIvPXBcbgjquIcuF1L0TED2I15vb2Dds8=;
        b=Q0S6m5paZmUd3p19YQAT+9/rbNaiRO05D/AapPJ1v5knRzNcwr7Hcl7D8gHPlvzr2e
         ylvGExgqiPQmDnrbnTPYaxLHl28REQ0TBqI2T2rIdynTTDeeQ3ZfqsDk0tEJP0/JU7FV
         xH0ksy/QywgyqbfZF/PUdOYLNyN0qSm18PcLM+CBHPUhqMwhQD2d9WPFM5FJXk9llwYP
         JapCm6blB5yKj5AD5ZF+DZ46IV0gacAaJhb7Iv0Ts1KsYe5GybRb420T9erpx2/Dg40O
         qPtkeHlZbJ/BByFotp/+FwHB1pKpWRSIhLR3wcYlWPNH0RNMo5NKCgo9zZ2FNqeZjIMB
         xz7g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1776276790; x=1776881590; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9gRhiia4833DxzrvqZL9qr7QlaMy53ONYU9XsjC12CA=;
        b=Fi9x2Y4OFg4uXnktdmaFdbh46RlrHVy6R/M/pfXWlMB+W8K+oEEhACuQGmODi7Pez3
         u8G5jprcfeux1BSkXxGeFC67Sysu22ruTmsvfxy0dCYJjMKcTApt6jsXddZ3tJ68cyvC
         yWZQInw1v5vXv+9zImt2MSk3540CixnUwPsngZPu2l5O5JVbfFIlDKvTpQoZRddE1Uv6
         FFKiNgz5/JOGV80Mn3PK1CvXDdR5Arnm9+5xT0R8Rxl47Z8mURq3cWm4fPvPhHdkVTM7
         g3m72BAA9I0EBk/PLFZE47OBlPHpxKILuQCl9VHYNRPKdC2hrk7XLa0R+g8gqYX07J5x
         CoWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776276790; x=1776881590;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9gRhiia4833DxzrvqZL9qr7QlaMy53ONYU9XsjC12CA=;
        b=n/5j3PmrsBg7kyXazEfTcxd9qTjWyOVThkvCuO738bSvMrCsDpNckOezR4fDgbrBhs
         GEed6hfka8uZoQNRiU5zoC4j3LUA6L47MS1zB80mCxNjutzl94WHmwqpSbVTSSolnyEt
         AFnhozJ7q/yzgz+IoUvBxQyUaap1ni87w7UgXPmZVNvloshqad+WzggnfyXRIK/AchD5
         I5hjKCAC4dlnWgIAX3uP/GoE3iamx7x2N+98hzw6XcNne7rYZgsi4YSTaaH0Cl1UUaBN
         f/8YoZiaNb57bMaALu7lmqcoQqjn8sSdP87VR48631krQeoS1djxP+u3RsDCYU+xfj0g
         1gig==
X-Gm-Message-State: AOJu0YxlTGSD/pNesVkKKcO+HnpwAlTO3qwhek4mrij/6xvXbyJoA2qX
	PkiPE1OhQmCbyJta5M7onrgT8FWTjj6KezBGJCEptVRmM0gy0muP0X157WuOFFOqjrhkWG2VvAY
	paj2LygcMHdp/delIafHEqPIcYAVxf4Jx47mPljnJMEoInZ3gZegJXHhQsWLD
X-Gm-Gg: AeBDieuraDLzgjFKBwby3nF3Il5BeFwaVvl6djSFZKN0HCtkVbQPn6ZBPFHX3C/YiBb
	oanaU/DnQRbxmt15ugVOA0x+GPONWUSrbaX2zgI9H6KmzAObxIrGW2fwlIgKV3elDH3ELqpuWbr
	8WOGW+2Tf/IeVvXL3UFnab+RChUdpbOv3DUFiRxFCpyiFS8oYsAUSh9dikJ0SOtWlUQsjJFz0CP
	Yt7KfCtfE8JgALdUNkv8N67Eayn5z5+GXz908VqiOjNfbmjv0CxyLGmHPIJiAnTMHdHA7eQMVen
	nYki/LDjcQncGbCPMS7qbDbN0JZUf7WeQwjs2Opb6b0q5fKRJvnDt5hWMftukLk5W4iP3vJkz0j
	SgmZJaqrY6+orch+axY55CayRsCt8Fwu/aC8y0ER4pl+NQv+1Gg8Pv3vDt2zxOSA5HtxeZhJnZl
	pNxJOJ9E+0WO5coFMk/G79S4ltIqntqALz5Ly/QBY8zUJrTfWDs863xVVyXFy27c+m
X-Received: by 2002:a17:906:4790:b0:b98:7e30:8129 with SMTP id
 a640c23a62f3a-b9d7296657fmr1221822466b.32.1776276789659; Wed, 15 Apr 2026
 11:13:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?RGlyayBNw7xsbGVy?= <dmueller@suse.com>
Date: Wed, 15 Apr 2026 20:12:59 +0200
X-Gm-Features: AQROBzDZMldFwdIxnZEhLmbcmb9M3xInO-OuWjT5LS6pvYESvyveX8eNx66zQDM
Message-ID: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
Subject: [BUG] typo in man2/readlink.2
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.60 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5332-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[suse.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmueller@suse.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,suse.com:dkim]
X-Rspamd-Queue-Id: 550F0407012
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

I noticed that man pages 6.17 release includes this in the Synopsis
section of man -l man/man2/readlink.2:

      ssize_t readlink(size_t bufsiz;
                       const char *restrict path,
                       char buf[restrict bufsiz], size_t bufsiz);

I believe this is a typo and it should be:

      ssize_t readlink(const char *restrict path,
                       char buf[restrict bufsiz], size_t bufsiz);

instead. It doesn't make sense to me to have bufsiz twice in the
function signature and as far as I can tell from looking at the header
files
bufsiz is the last argument.

Sorry for not including a patch, but I am not sufficiently skilled at
editing man page sources :-)

Greetings,
Dirk

