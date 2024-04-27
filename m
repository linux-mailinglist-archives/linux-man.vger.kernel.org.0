Return-Path: <linux-man+bounces-830-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 429058B447C
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 08:17:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4D391F228BF
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 06:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5593C40855;
	Sat, 27 Apr 2024 06:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gGgRVgLb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF083A1CD
	for <linux-man@vger.kernel.org>; Sat, 27 Apr 2024 06:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714198654; cv=none; b=fDHwOajNpi0TQKLAWoYxrqLOYwHmTmnrfoLieM/iKLGrEiA4wi7AApsWGwgUvTLY4HsK+4zXKFfhGkLGTJxX6gq3rFtDQyPtMM0hoVSkmTmICM1RwL9b+IIyCsGk4DMAcUjIZu7pQfoLRpzILNMSf35lGW4um0HsHjqNTLxNqac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714198654; c=relaxed/simple;
	bh=F8MMunOF0oQCqXw9f4HmY07iD0tnh4ktfagT5/Jzs64=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=A6vqKXXexgkcGT1hRISVKs6Zdh+J3TAh0k2G/70iVIbnfVcEsEsD1eSH5YZy3O7utdTkhFWNGRO2Yu1C6BY/Gr4oIMjeB5ZP5mZRV5Rm0pw1SLcolYiNzHtt4u9BKFE8dCCbwOMXa/Zs72AiMUBzwe17mBhj5T/lXehENTYpCNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gGgRVgLb; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6ee12766586so2212730b3a.0
        for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 23:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714198652; x=1714803452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HTeeYg5PEOUzJpH8JTldNKXm7UtflrHcM66MFmN0J/A=;
        b=gGgRVgLbxXCciJbeMkwX488cd/sLmrx/P16l5sRC+ZPGItn2+vij9GXf3YOyipwJrg
         vv+FerYUlDoh7H9aUlY5WpHgSNXV82UNuRKAcT3ZOGp0oc0Wtks6texT9V+NpHJB8OGs
         oDzwox7aE69bRTGHcQ34SVfVVSyvdZWvv7Wv73KPm9U5cfeMxzGi/a3hgUwao0diw4Jc
         fbrvRt3quSFAAlYi8tkfqwC9TumZsuEtb80YmWwI5My2letQmuh9Oa0N2GgtCVg40evf
         T96n1HElMmyIOI5OAlYaLmvw614edrAtV0krQ729YpZS0rc5xOHFVcdLZGHCOjQfaQNx
         cLTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714198652; x=1714803452;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HTeeYg5PEOUzJpH8JTldNKXm7UtflrHcM66MFmN0J/A=;
        b=QInSOrVcb4JojabVFdKYqYBSJbFPc4ka0lOetXGRCFCpqq3pYl+Ko3NYSqOm6ygYLP
         pvkv3Lew5ZlPaPQx7+SQqaJ1Y0TQUIoW+G28pRDT3Kc5bUNhuJj1B/bO5PAcgnNAEJw/
         +hfkD2iLJrFxyQyxT5diPKN2hwAJiLILWItB80RuqWxryBHKiOBYj3kIECprVMD3Sy0e
         Rqh16JrKbMHRIOBLegUQHxYq/blhC17v7eZJX/8ugMi3joj2tf6u2J5hutPsc+sH4I1U
         zCPVlEx4IDoG7UC6E4RBEFm3EWsUIEVUIKa2EqFMeDykjdajEWt7alOe8UbmBgaoPFco
         WMrg==
X-Gm-Message-State: AOJu0YzHZ92uPtAGi+taHihCGr5B/1Tno1+Cg8WmOONzFhSe8+dFXFjp
	xJ7JavT13abwFQ5k9/W0MT1wGgafQdrLpMCT9inMXV2XzQz38uBGkdAzTg==
X-Google-Smtp-Source: AGHT+IGnlYr1yzpygak39rjoRPEKLK+mI3a0nvulJZF3pW1npysOcJaTrWQltoazLEBPV46TH0JH2A==
X-Received: by 2002:a05:6a00:3916:b0:6ed:41f4:1886 with SMTP id fh22-20020a056a00391600b006ed41f41886mr6425564pfb.8.1714198652052;
        Fri, 26 Apr 2024 23:17:32 -0700 (PDT)
Received: from localhost ([120.21.2.138])
        by smtp.gmail.com with ESMTPSA id r84-20020a632b57000000b00601df0a973dsm8840506pgr.48.2024.04.26.23.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 23:17:31 -0700 (PDT)
From: Alexis (flexibeast) <flexibeast@gmail.com>
To: groff <groff@gnu.org>
Cc: linux-man@vger.kernel.org
Subject: man(7) <-> mdoc(7) (approximate) correspondence table?
User-Agent: mu4e 1.12.4; emacs 29.3
Date: Sat, 27 Apr 2024 16:17:28 +1000
Message-ID: <87h6fnwcqv.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


[ Not subscribed to the linux-man list, so please cc me if=20
replying there. ]

Hi all,

As someone who's much more familiar with mdoc(7) than man(7), is=20
there an approximate 'correspondence table' somewhere that gives=20
at least a rough sense of which man(7) macros to use when, in an=20
mdoc(7) context, one would use a given mdoc(7) macro? Such a table=20
might look something like (to use some obvious probable=20
correspondences):

| mdoc(7) | man(7) | Notes
+---------+--------+-------
| Lk      | UR     |
| Op      | OP     |
| Sh      | SH     |
| Ss      | SS     |
| =E2=8B=AE       | =E2=8B=AE      |=20

i recognise that there's no bijection in general, and that=20
specific mappings might differ between projects (e.g. the Linux=20
man-pages project might use a certain man(7) macro where a=20
different project uses another), but even a project-specific table=20
would be helpful to me.

i thought there might be such a table in either groff_man(7) or=20
groff_man_style(7), but nothing leapt out ....


Alexis.

