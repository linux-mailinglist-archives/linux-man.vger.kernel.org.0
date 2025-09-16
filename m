Return-Path: <linux-man+bounces-3873-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C413AB7C63C
	for <lists+linux-man@lfdr.de>; Wed, 17 Sep 2025 14:00:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77CDF188FC4C
	for <lists+linux-man@lfdr.de>; Tue, 16 Sep 2025 23:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F1542C026D;
	Tue, 16 Sep 2025 23:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bigonbalance.com header.i=@bigonbalance.com header.b="LmxwpzWC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F1D2EAD0F
	for <linux-man@vger.kernel.org>; Tue, 16 Sep 2025 23:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758063613; cv=none; b=HE76yIyDO2eM5qHVaMuXN5y+woedyOI1E0PetrlOL3QJFMiQKsUSbPol/fnf8ES5hiIR23ZpT8DOnRoHm7mTsM5cyNfJdMzUYaSmO8Jz1boSHmDwwM1WqKlt7t8UrMIHUVrL0mtR5QS3H4qvrsOiwAyLGH6mj855CnIygO21d/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758063613; c=relaxed/simple;
	bh=kZ/s1C0dJo4MVfM1CGgQsUDrsPE6XBz/LmfEycGmkKU=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=QqRgqy2AeYpSXCGIcCgv6THxDSTYHRPK0UBiuZzmUKIZ2KPb0uslaVs34/zB1mi4xI4fbJJqj1lEafcnBUSFWES/sKCFFqYmZQerchOSUzHPH/k18L0/fM6EBN7LXTI7HH7Y7uFAgcUR+82CxgEv3yozL3SL+r/7cBTHxrr9r6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bigonbalance.com; spf=pass smtp.mailfrom=bigonbalance.com; dkim=pass (2048-bit key) header.d=bigonbalance.com header.i=@bigonbalance.com header.b=LmxwpzWC; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bigonbalance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bigonbalance.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b07c081660aso881418566b.0
        for <linux-man@vger.kernel.org>; Tue, 16 Sep 2025 16:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bigonbalance.com; s=google; t=1758063609; x=1758668409; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kZ/s1C0dJo4MVfM1CGgQsUDrsPE6XBz/LmfEycGmkKU=;
        b=LmxwpzWCJTbl1ybAeuq3xS8GIoDxYbBi55qtEtss3CfiAIlU3h1ppKiQ4MITVDAK5S
         QZcCMkzI7kugzKPmSpJO6WC2mWVYqZDUr9T+pWHwDAojlgcjCmi1DvagmpZSvTCKdFOd
         3QMcPFekX+RQjAlkyhTExCdGhlXK+m1cfF/om+cCreoxUr+F9tWejjl1TF9CnZGwajXf
         TIQLqiUfgB18pAyfCVTXTskdNxnelB85OZF03YN1keSCW6MFeduvGoAM1IOwRc5aKggz
         czmIGUcv+rOWmguI70fExnqn9DUh1PPVohd+I2mq+8DIvhKrPT6T47ltzpRwzfwgfryu
         u4aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758063609; x=1758668409;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kZ/s1C0dJo4MVfM1CGgQsUDrsPE6XBz/LmfEycGmkKU=;
        b=n2/oFBdREHlYjsum/bjU3hBbIKt7AchTDD2+7GGtg/PDEOWZB7lg54DdO0d2JyhSo1
         o/i4D6zaibKunUtKHQ1FdoPu8fuEuzNofipM2X8bgEMJejG3YKp+NAYgkcp0E+969BiF
         HKAJBEDSmixXvOd2Wy97LMjm8N+b+tUd2RhsS9HsJ+cUhfnO+CC/7zJT2LOawxAvNWtL
         QazrkEvABtsmTDeJ2iVwDOYZanLRYihdpWRMOf2L/+p1AwD/MAnwxXPiz/5nhlMHif84
         m3D/IouqMschsdjyZoc2QnSB1sFG1+MhUboHeDuZcXvyrk1tS7LgkMAIToFaXNG3QOQf
         aDuQ==
X-Gm-Message-State: AOJu0YwMoqgYp/wTaLP/eu7mbP2QFB1q/GJAi7GsDjOPnq+IKsqyf0Zv
	s7M3xFxnBM5fcka8s6jrC+QnOFi9WwehlUzuqlJ04i48VCZg6offiGd2S8acx69hHvysD44szxH
	YT3AGZNNppxxF3ss0TWeFbytNDA2ovQR+CKha0/hyzFwxyuuB/0Hw
X-Gm-Gg: ASbGnctqNw+6kHX0Z+hrFjdpl1JFgbCQ2MseNllqSLVEUYfOEkRrOasFByA7Pnodnzp
	AwhAZXC7kOonz+AnQtTiS51WF0KU1ovSignrcKc2iDLZgTFZj5kPAb98zIhzbkvu7hfukxL5kvH
	nIDqV4ehHlB6rp9UWu0+uZVR9DUC8OVrigXJ2r9OxT9UoHijN7fk8JSr1jHYo3UTtSCp+RGT4Mb
	Q0DkQw=
X-Google-Smtp-Source: AGHT+IFjJ+jgVC6sQcsimOsDnAH4d5kdzQC3Qg2bdGX/fjDoh32tTBquLU2Mxe16AGUDW/8mQxsm1TuE0AFhtCWIlxY=
X-Received: by 2002:a17:906:6a09:b0:b04:a1a4:4bec with SMTP id
 a640c23a62f3a-b1bc020111bmr17829366b.58.1758063608705; Tue, 16 Sep 2025
 16:00:08 -0700 (PDT)
Received: from 23306461726 named unknown by gmailapi.google.com with HTTPREST;
 Tue, 16 Sep 2025 16:00:08 -0700
Received: from 23306461726 named unknown by gmailapi.google.com with HTTPREST;
 Tue, 16 Sep 2025 16:00:08 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Ian Garza <igarza@bigonbalance.com>
Date: Tue, 16 Sep 2025 16:00:08 -0700
X-Gm-Features: AS18NWArco9NRoba3tlCPSKNO9QrDKCmKMRXNzmFgzMO7e8BQ4OFKovgmol43P8
Message-ID: <CAADkYMwB+Kmi-uB96Hhqd0QaGrh4a7a42qXKas4sbu4eRrK2PA@mail.gmail.com>
Subject: Quick Follow-Up on Health & Travel Article
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi there,

Just wanted to check if you had a chance to review my previous email
about featuring an article on health and wellness during family
travels. I believe it could really resonate with your readers.

If you already responded, thanks for that and sorry for the repeat.

Ian Garza
Bigonbalance.com

