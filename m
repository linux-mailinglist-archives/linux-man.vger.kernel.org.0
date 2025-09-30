Return-Path: <linux-man+bounces-4011-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 850C1BAE490
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 20:18:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C99F719244C4
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 18:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 628092116E0;
	Tue, 30 Sep 2025 18:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=simnet.is header.i=@simnet.is header.b="E8N5jQT1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2-04.simnet.is (smtp-out2-04.simnet.is [194.105.232.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2B91A9FAF
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 18:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.105.232.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759256322; cv=none; b=czJHKI92YsnrVEJLIoWeWJdY+0ilQknlApXe6SqPYL+kNXVQrfAmYMm8v7RYjrL2I97oboDAB+qONqVSD8C4O8YYHIqXNFs3p09KusX22ZelFMnVobwbYsaIgzGUZcx8yt2rRFJyAKbtDwCy7AhVPL9bZj3hEW4OsKPsLC6d3So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759256322; c=relaxed/simple;
	bh=7pdTL7Gy7QKo+amoZBMlTTfU0MRRsrUdo1SOG2UnFk4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=PFMpRPN3VECpZAJVHTH5apc17TIKdhL0ZScT/G71WzDNlt0UzrMlsZOTXzv74A6vLKFG+OMXekdAhaMtLOK7vEExHKGTqjX5utRUjudo4H2C3B/JOZ1NmrlCdD1yJmRjlxgJfAMpvk6BT1IYzMVdDIghu0GIsaTOH+uxggtrVvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=simnet.is; spf=pass smtp.mailfrom=simnet.is; dkim=pass (2048-bit key) header.d=simnet.is header.i=@simnet.is header.b=E8N5jQT1; arc=none smtp.client-ip=194.105.232.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=simnet.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=simnet.is
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=simnet.is; i=@simnet.is; q=dns/txt; s=sel1;
  t=1759256319; x=1790792319;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=xpoaSNNZwnps3hiGO1z4etBVBg6wL4hUlik+Y0z/wps=;
  b=E8N5jQT1sZ6IloFhAPpjy4OYdAEiR/cbwlLtGjS/gT5uZ3gcO1JkVHVM
   jdSYfiDGBP3Hv5ulkioZDnOXag/14I4UKqwujaWR1BKrj5ttLOpZZhDQp
   +ifureBxvNIdi5vMIxgtiCoWbYWKkTJmaLGE2IEXJsjg1HICNYb/zQr9r
   FHTMlsu2Bh09x8UfFhuIf1mARvOkJbBQlUwh5a+rVroevTMBr2f12qrz2
   Zhfx+GkvrgaB9dydqDWzsx39H61Z/lt/R+J7gQ6n3RryjBCwwqBUdRjye
   bWtQpCjfIVNF38Pa8yg4zhLkxRtFYVr8Wu3utXb7CTILF/lHs69dThqQx
   w==;
X-CSE-ConnectionGUID: lEQdWLRiTP+F6HYOob92cw==
X-CSE-MsgGUID: f/imypTXQ2y6o/k6lIhpRA==
Authentication-Results: smtp-out-04.simnet.is; dkim=none (message not signed) header.i=none
X-SBRS: 1.9
X-IPAS-Result: =?us-ascii?q?A2E3AwAoGdxod9Viq09agQmEE7lYAQEBD1EEAQGRTyg4E?=
 =?us-ascii?q?wECBAEBAQEDAgMBAQEBAQEBAQEBAQsBAQYBAQEBAQEGBwIQAUMOO4YJU4cjP?=
 =?us-ascii?q?ylITIMVgnO5dYE0gQHeOYFtgUmFbYJkAYsfBoINgUqOOgSCIoEWkDGCe4wdg?=
 =?us-ascii?q?UocA1ksAVUTFwsHBYFjA4EPbjIdgSeFC4QeK0+FAoEYg1Mkaw8GgRWDWwaJa?=
 =?us-ascii?q?w+BEQMLbT03FBucfAYBgQ4BtEKVF4QmoXEzl1IMkw2ZBqQhhSCBf4F/LAcaC?=
 =?us-ascii?q?DCDI1EZD9pzgTQCBwsBAQMJk2kBAQ?=
IronPort-PHdr: A9a23:EXc3NxCi45YPnRWysLC3UyQVQxdPi9zP1m898Z87k/dJb7jmp8ikJ
 03a4/hxyl7SDs3X6PNB3uzRta2oGWkN+o2Iv31KdptQHwQEhsMbk01oAMOMBUDhav+/aSs8E
 ax/
IronPort-Data: A9a23:hECS1aD5G90WDRVW/z/jw5YqxClBgxIJ4kV8jS/XYbTApDgihjBUy
 GQXUT+CbPbYNjfwf94gPd6+/BsBsceGx9VrOVdlrnsFo1Bi8JGcXYvDRqvT04J+CuWZESqLO
 u1HMoGowPgcFyGa/lH1dOC88RGQ7InQLpLkEunIJyttcgFtTSYlmHpLlvUw6mJSqYHR7zil5
 5Wr86UzBHf/g2QpajNPs/rZwP9SlK2aVA0w7w1Wic9j5Dcyp1FNZLoDKKe4KWfPQ4U8NoaSW
 +bZwbilyXjS9hErB8nNuu6TnpoiG+O60aCm0xK6aoD66vRwjnVaPpUTaJLwXXxqZwChxLid/
 jniWauYEm/FNoWU8AgUvoIx/ytWZcWq85efSZSzXFD6I+QrvBIAzt03ZHzaM7H09c5zLFhCy
 tgiKQw1LT7dp9ORx7jqEOJz05FLwMnDZOvzu1l+zCrFSOQnRIjZRLXboIcGmikxndwIHO22i
 8gxNmspNUuZJUwffA1OU/rSn8/x7pX7WzdXgEmUoKw6/y7S12Sd1ZCzboKLJIPaHa25mG6W4
 WPD7nzFMihAJYKYjjnb9lOsntXmyHaTtIU6Tubmqq812TV/3Fc7ARkGfVi2u/+0jgi5Qd03A
 0gV/Dc+6K078mS1QdTnGR61uniJulgbQdU4LgEhwB+M0baR8QecHnIDXi8EMIJgqs4tWXorz
 Tdlgu8FGxRrnYSZdlan94us7h3sGRkyKmVTPyQbGF5tD8bYnKk/iRfGT9BGGaGzj8HoFTyY/
 9xshHNj71n0pZVQv5hX7Wz6bySQSo/hbzVd2+k6dnyk9R88do+gf5av+UmetagGMoeCUh+Ap
 xDoevRyDshTUvlhdwTXGY3h+Y1FAd7fbVUwZnY1QPEcG8yFoSLLQGypyGgWyL1VGsgFYyT1R
 0TYpBlc4pReVFPzMvImOt3pW55wkPK+fTgAahwyRoEeCnSWXFTWlByCmWbJhQgBbWBxyPtnU
 XtlWZz1VB729piLPBLsHLlBgOByrszP7XjeQ4vyhxmn39KjiI29Fd843K+1Rrlhtsus+VyJm
 +uzwuPTmn2zpsWnM3GPqeb+7DkicRAGOHwBg5UML7Xde1A5Rz5J5j246epJRrGJVp99zo/gl
 kxRkGcBoLYjrRUr8Tm3V00=
IronPort-HdrOrdr: A9a23:uATXdKjGxdsQPmd1GvX5LEkbpnBQXssji2hC6mlwRA09TyVXra
 CTddAgpHjJYVcqKRUdcL+7V5VoLUmzyXcX2/h1AV7BZniFhILAFugLhuGOrwEIcBeOldK1u5
 0AT5RD
X-Talos-CUID: =?us-ascii?q?9a23=3AzFciE2tCHeHk3t7Zk0WC6WnX6IshX0TR81PqInO?=
 =?us-ascii?q?ASkg3aIyyTlXBoqh7xp8=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3AdxOavwyJlaMkGJkd99x4Mq4CpoOaqKrpCUUciak?=
 =?us-ascii?q?2gpOVays3OGmZrTSveKZyfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.18,304,1751241600"; 
   d="scan'208";a="66066780"
Received: from vist-zimproxy-06.vist.is ([79.171.98.213])
  by smtp-out-04.simnet.is with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2025 18:17:27 +0000
Received: from localhost (localhost [127.0.0.1])
	by vist-zimproxy-06.vist.is (Postfix) with ESMTP id 4D03120BFA9D;
	Tue, 30 Sep 2025 18:17:27 +0000 (UTC)
Received: from vist-zimproxy-06.vist.is ([127.0.0.1])
 by localhost (vist-zimproxy-06.vist.is [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 7mlK3vVi38wU; Tue, 30 Sep 2025 18:17:27 +0000 (UTC)
Received: from kassi.invalid.is (85-220-33-163.dsl.dynamic.simnet.is [85.220.33.163])
	by vist-zimproxy-06.vist.is (Postfix) with ESMTPS id 2141220B1D7F;
	Tue, 30 Sep 2025 18:17:27 +0000 (UTC)
Received: from bg by kassi.invalid.is with local (Exim 4.98.2)
	(envelope-from <bg@kassi.invalid.is>)
	id 1v3euk-000000001Ah-2VhT;
	Tue, 30 Sep 2025 18:17:26 +0000
Date: Tue, 30 Sep 2025 18:17:26 +0000
From: Bjarni Ingi Gislason <bjarniig@simnet.is>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: '^\}$' is changed to a space character
Message-ID: <aNwetmt-I0cT-u93@kassi.invalid.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

  This is shown with (my version of test-groff)

test-groff -man -t -ww -b -z man7/vdso.7

troff: backtrace: file 'man7/vdso.7':146
troff:man7/vdso.7:146: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':196
troff:man7/vdso.7:196: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':225
troff:man7/vdso.7:225: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':261
troff:man7/vdso.7:261: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':279
troff:man7/vdso.7:279: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':307
troff:man7/vdso.7:307: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':369
troff:man7/vdso.7:369: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':411
troff:man7/vdso.7:411: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':451
troff:man7/vdso.7:451: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':472
troff:man7/vdso.7:472: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':490
troff:man7/vdso.7:490: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':508
troff:man7/vdso.7:508: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':526
troff:man7/vdso.7:526: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':551
troff:man7/vdso.7:551: warning: trailing space in the line
troff: backtrace: file 'man7/vdso.7':570
troff:man7/vdso.7:570: warning: trailing space in the line

  This result in an empty line.

  Not all '^\}' lines are reported.

  grep -n -e '^\\\}$' shows all lines.

  Visible change is two empty lines after a table instead of a single line.

  A full stop should be used in front of '\}' to make the line a control
line.

  This also the case in some other files.

