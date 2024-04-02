Return-Path: <linux-man+bounces-713-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3917F895174
	for <lists+linux-man@lfdr.de>; Tue,  2 Apr 2024 13:08:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5CDC21C20999
	for <lists+linux-man@lfdr.de>; Tue,  2 Apr 2024 11:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97CD604D5;
	Tue,  2 Apr 2024 11:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aisec.fraunhofer.de header.i=@aisec.fraunhofer.de header.b="avgr/YWH";
	dkim=pass (1024-bit key) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b="NLWfYdFF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-edgeBI124.fraunhofer.de (mail-edgebi124.fraunhofer.de [192.102.163.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A049859176
	for <linux-man@vger.kernel.org>; Tue,  2 Apr 2024 11:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.102.163.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712056119; cv=fail; b=IXdlvRC2s8srmQ75jLMNXnx/OlZsESRfFm5/4J2kq17f6Hj3Tpjs3fUgvDWAAHOH3AfElBRtNe0ZqPyet5OdYSxOoH2I7vaaToCfRo3XLHfBC/JpaZ4ASQ7lA8hU0/bXF6IftDpgwB8ddV65sbq6jR+b93wScPe7b1JQXBGVh98=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712056119; c=relaxed/simple;
	bh=Wewh1Ug1FEc1p86OhrKGcoY9DBcLaS0rB0Q8s7paOXw=;
	h=Message-ID:Date:Subject:To:CC:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=oSFOl1pjaUTDe5BKx59NjE6G5RBhEjXjMVdEt3CgjWogy0pKySri6GT1lMAHo3C+9oLsin7ALprm80YOCCwU3riG6kUjzQ8PEpaOtwY4VfZWKB82ExgWUSQ/+rlh9OsKljPwR/6IboL5sE8nUMT9ayjDyPQQQ7n6ELnfVP4vFe4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aisec.fraunhofer.de; spf=pass smtp.mailfrom=aisec.fraunhofer.de; dkim=pass (2048-bit key) header.d=aisec.fraunhofer.de header.i=@aisec.fraunhofer.de header.b=avgr/YWH; dkim=pass (1024-bit key) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b=NLWfYdFF; arc=fail smtp.client-ip=192.102.163.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aisec.fraunhofer.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aisec.fraunhofer.de
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aisec.fraunhofer.de; i=@aisec.fraunhofer.de;
  q=dns/txt; s=emailbd1; t=1712056113; x=1743592113;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Wewh1Ug1FEc1p86OhrKGcoY9DBcLaS0rB0Q8s7paOXw=;
  b=avgr/YWH79QLSvlB3RQ5TZHOa4xb+qevDAE4KzzckHH50RBeZTYk8uW9
   /OePFRAAV6gK7wc/98wBkDlJ2iOVu3o6CdIS2+G9gtfATVH9aGJFGQsO/
   WYvfWZW2bZ52Fbkx7dEvM4piuHkX6w+mF9Xp/he0p7XrdgvsuBpvWTsg8
   HNtYVqSeOyUFxBFdaGR21mJzwlXqHemfMScWUpmn0jCJCmQL+yc7F+zef
   V05CPHL8EqQsMzYC0l1uTXTODXoeg90A6d0r7XHZ4+SNrd7yicznh5CMS
   1EnVjQsrxnWkXeJd8N7Qdk4AMNYEQaGZP1iElf5lklVIcsi5E69kxH4sZ
   A==;
X-CSE-ConnectionGUID: iUVmt0BSTqOrw3ZfwKQ6UA==
X-CSE-MsgGUID: ZzdmiSQGQaut0dNNHFPoYQ==
Authentication-Results: mail-edgeBI124.fraunhofer.de; dkim=pass (signature verified) header.i=@fraunhofer.onmicrosoft.com
X-IPAS-Result: =?us-ascii?q?A2E6AAAW5Qtm/xmnZsBaHAEBAQEBAQcBARIBAQQEAQFAg?=
 =?us-ascii?q?TwGAQELAYI4gluEVpFnA5gshC+BLIElA1YPAQEBAQEBAQEBBwEBRAQBAQMEh?=
 =?us-ascii?q?H8CiAgnNQgOAQIBAwEBAQEDAgMBAQEBAQEBAQYBAQYBAQEBAQEGBwKBGYUvP?=
 =?us-ascii?q?g2EBoEmAQEBAQEBAQEBAQEBHQI1VAEFIw8BDQEBNwEPCw4KAgImAgIxJQYOB?=
 =?us-ascii?q?QIBAYJ8giwDMa9mgTKBAYIKAQEGsCcYgSOBHwkJAYEQLgGDaYQ9AYo0gk+BP?=
 =?us-ascii?q?A6BBoE3OD6ECk6DRoJGIoEXf4MOKYJ4hXCBJIkpgihBgVkwghSBMoU7VH4cA?=
 =?us-ascii?q?4EFBFoNBRYQHjcREBMNAwhuHQIxOgMFAwQyChIMCx8FVANABkgLAwIaBQMDB?=
 =?us-ascii?q?IEsBQsaAhAaBgwmAwMSSQIQFAM4AwMGAwoxLk9BDFADZB8xCTwPDBoCGxQNJ?=
 =?us-ascii?q?CMCLD4DCQoQAhYDHRQEMBEJCyYDKgY2AhIMBgYGXCAWCQQjAwgEA1ADIHARA?=
 =?us-ascii?q?wQaBAsHcQWCAIE9BBNHEIEyhTWEZQyBfYE2KYFOKYQ4C0N0FgJKLwNEHUACA?=
 =?us-ascii?q?QttPTUJCxsoAR2oZQE8JhEHEwomE3qBDwcKDCkUkkiDKpAJnzcHgjaBYKEuB?=
 =?us-ascii?q?g8EL4QFg26JDoZDi02HHy6HWJBco0aFEwIEAgQFAg8IgWUBghQzPoM2UhkPj?=
 =?us-ascii?q?iCDepxCdgI5AgcBCgEBAwmCOYY1gXwBAQ?=
IronPort-PHdr: A9a23:dt0wwRNL6DkGaMn3AoIl6nZUDBdPi9zP1nM99M9+2PpHJ7649tH5P
 EWFuKs+xFScR4jf4uJJh63MvqTpSWEMsvPj+HxXfoZFShkFjssbhUonBsuEAlf8N/nkc2oxG
 8ERHEQw5Hy/PENJH9ykIlPIq2C07TkcFw+6MgxwJ+/vHZXVgdjy3Oe3qPixKwUdqiC6ZOFeJ
 Qm7/z7MvMsbipcwD6sq0RLGrz5pV7Z9wmV0KFSP2irt/sri2b9G3mFutug69slGA5W/Wp99Y
 KxTDD0gPG1w38DtuRTZZCek5nYXUTZz8FJCA12csB3GQqXblxKistZEiRKQAtXrHLQsUm6s9
 pVsGU/GmDonFWVh3UWLl/J/2fE+wlqr8jpb/IDlbK+7C+FmRuDPftFdf2NIZsNtcAN7U7//N
 JU3IcMAPvtzpI7DlRwvrBKHIheWBtKsyjpNgkHS7PVh7eVxMxrahVwfIYkDiVeOoNvfD4JRX
 9zswLeU0xP6Uc9xmhLS5pH0djEAnMGIdJ5CapLNihAlNyPFrAiCqc+mEhOE7LhckDm7ycV7U
 fuElj8LlxEgnBS2w80M1pf22rpWmxPG2D4+xLRvDN6BSxsoKc7hEYFXsTmdLZczWM45XmV07
 T4z0aZV0XbaVC0DyZBiyhLQZtamKtLUpBz5XfuXITB2iWgjdL/szxqx8E310uTnTYH0y1dFq
 CNZj8PB/m4AzR3d68WLC7N9806t1CzJ1lX75PtNPEY0kqTWMdgmxLsxnYAUqkPNAmn9n0Ces
 Q==
X-Talos-CUID: =?us-ascii?q?9a23=3Abvvyf2lqSjLxiHwz7OG1+hJ8ckXXOXzg8nLMe2W?=
 =?us-ascii?q?DNX9OUqLOe1GP25o6ruM7zg=3D=3D?=
X-Talos-MUID: 9a23:QOtAUwg0DQ7FUmfrRm0yu8MpBtVk5qWVMW80mIga48WiEwxeAzCstWHi
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,174,1708383600"; 
   d="scan'208";a="1065329"
Received: from mail-mtadd25.fraunhofer.de ([192.102.167.25])
  by mail-edgeBI124.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2024 13:07:19 +0200
X-CSE-ConnectionGUID: NYwkBxJ4RwqlFxPzBRYJNQ==
X-CSE-MsgGUID: 7qWRw4nZStGPObHSGYmYhw==
IronPort-SDR: 660be6e6_61CD0pRnoa31/iQE+R769hfDgseN4wuMwjr6XHCiPJHhabE
 DUSVgHayJPwF9ais+6vrMpiWDrENbsW2Hph1R3A==
X-IPAS-Result: =?us-ascii?q?A0CiAAAM5gtm/3+zYZlaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?RyBFwYBAQsBgWZSBz6BD4EHhFWDTQEBhS2GSoF0LQM4AZdzhC+BLIElA1YPA?=
 =?us-ascii?q?QMBAQEBAQcBAUQEAQGFBgKIBQInNQgOAQIBAQIBAQEBAwIDAQEBAQEBAQEGA?=
 =?us-ascii?q?QEFAQEBAgEBBgWBChOFbQ2GWgEBAQMSEQ8BDQEBFCMBDwsOCgICJgICMQceB?=
 =?us-ascii?q?g4FAgEBHoJegiwDMQIBAaJ9AYFAAosigTKBAYIKAQEGsCcYgSOBHwkJAYEQL?=
 =?us-ascii?q?gGDaYQ9AYo0gk+BPA6BBoE3OD6ECk6DRoJGIoEXf4MOKYJ4hXCBJIkpgihBg?=
 =?us-ascii?q?VkwghSBMoU7VH4cA4EFBFoNBRYQHjcREBMNAwhuHQIxOgMFAwQyChIMCx8FV?=
 =?us-ascii?q?ANABkgLAwIaBQMDBIEsBQsaAhAaBgwmAwMSSQIQFAM4AwMGAwoxLk9BDFADZ?=
 =?us-ascii?q?B8xCTwPDBoCGxQNJCMCLD4DCQoQAhYDHRQEMBEJCyYDKgY2AhIMBgYGXCAWC?=
 =?us-ascii?q?QQjAwgEA1ADIHARAwQaBAsHcQWCAIE9BBNHEIEyhTWEZQyBfYE2KYFOKYQ4C?=
 =?us-ascii?q?0N0FgJKLwNEHUACAQttPTUJCxsoAR2oZQE8JhEHEwomE3qBDwcKDCkUkkiDK?=
 =?us-ascii?q?pAJnzcHgjaBYKEuBg8EL4QFg26JDoZDi02HHy6HWJBco0aFEwIEAgQFAg8BA?=
 =?us-ascii?q?QaBZQE6gVkzPoM2TwMZD44gg3qcPEMzAjkCBwEKAQEDCYI5hjWBegEB?=
IronPort-PHdr: A9a23:LXnSmB/bYgl9JP9uWWy9ngc9DxPPxp3qa1dGopNykalHN7+j9s6/Y
 h+X7qB3gVvATYjXrOhJj+PGvqyzPA5I7cOPqnkfdpxLWRIfz8IQmg0rGsmeDkPnavXtan9yB
 5FZWVto9G28KxIQFtz3elvSpXO/93sVHBD+PhByPeP7BsvZiMHksoL6+8j9eQJN1ha0fb4gF
 wi8rwjaqpszjJB5I6k8jzrl8FBPffhbw38tGUOLkkTZx+KduaBu6T9RvPRzx4tlauDXb684R
 LpXAXEdPmY56dfCmTLDQACMtR5+Gm8Wx0MUDzTZ3jvfZ8/1jhKrjeBCwDTLOdX9F74tazPzv
 4l7VT/K038qE2Ikzm6C2akSxKgOhjaeqS1z7aDre5mtd+h9fOTndNoiQFZmcfwAa28aHLuSR
 ooMEsEKOthq6Kj8rmIpsyG8NEqsAebr9Bt53iTI3P0YyPh4QT74hwEZPIgCvl7viZb7CP4eT
 7yr6pD28RKAStxYwAv5yan1QhQIjcOXBa4zKMDx6UkNShHFzRa9iZ3fY2K2h8QrnHOf9sF9B
 M6Tmz8Zhxh0qBjz2PhwssqYxYA40RfAx39Qw782cI7wWAt6e9miCJxKq2SAOpBrRt93W2hzo
 3VSItwuvJe6eG0P1J0L60SCLfKdepWO4hXtWfzXLTorzH5mebfqnx+p6gDg0ezzUMCozUxH5
 jRIiNjCt30BllTT58GLR+E7/xKJ1yyGygbT7e9JOwYzk6/aIIQm2bk+itwYtkGrIw==
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:9laujK9BaZvBP7IEZ9huk+Ghdb1zdoMgy1knxilNoH1uA72lfq
 WV98jzuiWYtN9vYgBbpTntAse9qArnhOFICNAqTMuftWrdyRWVxeNZnPvfKlTbckWVygc678
 ZdmsBFZOEYZmIbsS+V2maFOsdlzduG9OSvnPrfyXB2JDsaE52Iqz0JbDqzAwlsSA5KCYFRLu
 vm2uNX4ye6cX4UKs68AWQMVfWGp9CjruOaXTcWQwM94AONySmv9KXxH3Gjr3UjeiIK3Kwr+2
 qAiRX+4KCuqLW6x3bnpgruxoUThcDowNkGHtWLjM0YMXH3hgitaIN9H72O1QpFx92H+RI2i9
 HHoVM7JsJ07n/LOnutpBvxnwnsuQxej0PK2BuEmnPoo4jnSCkhC8xH7LgpEScw8SEbzahB7J
 4=
X-Talos-CUID: 9a23:Y44YSmCrxJsnQiH6Ew9W600+CuJ5SGLEyFnAG12SM1dLboTAHA==
X-Talos-MUID: 9a23:yx7HLAk27YTtLSKCecemdno9LfhS/PioOnsRvq0hsem/Gh11CjeC2WE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,174,1708383600"; 
   d="scan'208";a="202936322"
Received: from 153-97-179-127.vm.c.fraunhofer.de (HELO smtp.exch.fraunhofer.de) ([153.97.179.127])
  by mail-mtaDD25.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2024 13:07:18 +0200
Received: from XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) by
 XCH-HYBRID-03.ads.fraunhofer.de (10.225.9.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.32; Tue, 2 Apr 2024 13:07:18 +0200
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.169) by
 XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.32 via Frontend Transport; Tue, 2 Apr 2024 13:07:18 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gn+RN61vAHpKjX/TzRofmt/nZzR9VJb7la9kMBpjJ1WvUb2JKmpk73Nce7V27Cb/Fc7ZDqmN0QHoXL3z7FbedlxuKqHTRGr/wrUcT01oV+FGTIUDI3Ov1fShLYu+aha6yJiUUH+RAVCBVeXt0MK5d9l+g1+KFsMK3Wct0TIwPwUr0EH6BbYOKE5Mj0/G/zivQco7meHd7JRy9LWxSGos+UUnYuPxC+VhIwbDE46O29FYNl1Kzb6yK2a7hfoQdVqDbvaZXO7tVoe3mFv2dUUQhBB/voncGedKJYvx09cr29tUhoDOzq5mBVE+Cc7i+Jx/ge1fCQQSsSVKMEHszekSow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=14dTtZBMQ0lTQ9SbWpu9lpc2fqZo98FxuHJ30EL4uVg=;
 b=hsnHw5tusJwDzqkQtt3799ws58JwOx069JiwV2ULGGnvghyCAbJKLTRQ+7c1Z1pSTROmfd3SBxITGP6BZJccAkw7k4HbN9ZKdNYBvQRxWEL4voVrvgOQw+KAQiSykHjfmyi6xfWaFhHjkZOQCTyUrsxtGNtP/0qTzRo5FfDJ01GfOJ8vPPa7YueRvre9P+i35yKQGuprmZJrMFSVhHF/4KD/VlBvop1UKTrSk85cm+kPxmN3BaktU/AZyBG1IYlwyKxIqxTsaxm5WqoGl9qXT3+O5puS+Nj2jg+aCnOlzOYPsiqEDiqwPrLaJS1Nb+m4HTS1J8lLXoPJpX0LQfm0OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aisec.fraunhofer.de; dmarc=pass action=none
 header.from=aisec.fraunhofer.de; dkim=pass header.d=aisec.fraunhofer.de;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fraunhofer.onmicrosoft.com; s=selector2-fraunhofer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=14dTtZBMQ0lTQ9SbWpu9lpc2fqZo98FxuHJ30EL4uVg=;
 b=NLWfYdFFWspP+zkj/RaaPmTOGR9T+3vPFAikuCcoVZ/IiaQOvRjY+hmmlVLY03Vi8Jst18WV3eQK2dfBSM+fT1dv4vNQVTO+MGfqTlIIUXlADZs0t+1bHHhJ5zh++EHyR49K9HNGslqCu9DTx9VDqmbH4vW4P+9+jEs/lZ2AkQk=
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:50::14)
 by FRYP281MB3225.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:70::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 2 Apr
 2024 11:07:17 +0000
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::47c2:f246:3fed:4e38]) by BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::47c2:f246:3fed:4e38%3]) with mapi id 15.20.7409.042; Tue, 2 Apr 2024
 11:07:17 +0000
Message-ID: <be8b4949-a304-49a4-9b88-6f02b4f556ef@aisec.fraunhofer.de>
Date: Tue, 2 Apr 2024 13:07:12 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
CC: <linux-man@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Stephen Boyd <swboyd@chromium.org>
References: <20240329124137.630521-1-michael.weiss@aisec.fraunhofer.de>
 <ZgiaxG6RKwWslu7J@debian>
From: =?UTF-8?Q?Michael_Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>
In-Reply-To: <ZgiaxG6RKwWslu7J@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0087.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::11) To BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:50::14)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BEZP281MB2791:EE_|FRYP281MB3225:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ub+Z2J6AE225urMNs05xlecXS2unhJnix/U8BcFVqbrD2K+9xKn7af10pUZ6G0//vlZYpgrpIxs4GKD1H3nS6hXjzaQmanwWUuAf98OVbc8Us1/jNbHSNDTaLbBYMqvwy98Hg5jDELRoFEtb+O653KyY4eooUEfIyN+OJ8XxQ7BAt+ByKo1U4nCbxHP+0EdWlfCy9ujnoofwSw8szZtZ6+M2JdkKONImtl/qLdeV+5E+hZ8xBfCLsrkVQjq9TI2+75dkC16hjoThN+0srM+456Rp6Sus8va4HfhVszCMeycMM/iBVjwb3p31Z+xSVh5E7lVhg5Sfxh3jSw5uS+6yXodP9+oMqk9f/322y/CbLHSVtwwhrw+qyFIb1ocf5fZL2oa2zoHHgkchDGCb2sAFadBT8qRrpOe/QaSVImnsvA1b8HzYfPyClntbj44h40YWO+H+nmpHteGhE2NjG3UvUzDheweBqLkTBtWmS8A3pAgMewbkKPpOmEoHderF4nvTpYM8U0R89zuWDh9HMpKUDAhOligmLQcUrR/Q8YYRQViKGJA5OlHKSSmNVPyBS8y+hIqcaOq4pFawHHYu/Twj4fjNT5kIY+obssJ3kOLSUAEI+RLNlBc5lU5zICbmro+OLkT+nm+AGEhYNNDq/NW6MWEsNt0Cbq2hoVZ7NeHAIHk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlpQNHV5ZTRVRUxGRy9zajl1Qit5YmVlbC8yTnBBRXNhV3FaQzc2cElpOGd1?=
 =?utf-8?B?VEltbHd1VEs5a1YxeTh0MlhWR24xOTJZSnpRZkhtcHJoV01UMjRTTzNBNVBB?=
 =?utf-8?B?aHA3RzlBL1JpSlZOSEllUW00QU9IMGZla0JwaTltSER0WnJ6R3RZQm0zazFv?=
 =?utf-8?B?dXlQUDcrSXFPZHc1SGNhcWwvZTVDVVJ2RFczRE1KVWRUYlNXQW9Hc2o5STMr?=
 =?utf-8?B?ZW4vNUYvMWFqRGJlbk1mZXZqUFE2aEZQcjA4SGJmdkZENUszbldQT1BKRUNI?=
 =?utf-8?B?YlBHblkwSUhCdEhMc216VUxSdVJrQlZoRzZLditWME5jMXl4cDdOUkdlR3Qy?=
 =?utf-8?B?aTQ1VHNvbzNQNEtpUkVkdU54RXByL1c4NWcyZ1NSV1hQUUxENDdjQmNmQkMx?=
 =?utf-8?B?UkdiYldpbTdEaElDL2xTVklLdnBpUFM3VlpTS3FNNGJTY1lxSWdlTXd5b1Rn?=
 =?utf-8?B?WGw3VDlSbHZCaVZtN2FWbGFRMXZzZlE0dzBjNm1ZelFLa2FNSVoxZkEvVFdC?=
 =?utf-8?B?c1lNb0srL1NhMi8yeWJuNzQ4NG5uMVZ6dlkvT1lIN3k1WWxEYzZ0RHJERVBs?=
 =?utf-8?B?TGNFV1ZyZkUzY0NVM0dXeDRKSHZCZWZ0eER6UnpDclNDZzR3UU5sOUVLRXRq?=
 =?utf-8?B?MGZaVjluUFA1MEltZTBmZ3hGWUp1SU9vekMrSDdnMjYzZGx1TS91UE55eWhy?=
 =?utf-8?B?WFFybko4Z1ErSVg3TDdVdGwrU1lZc1FxQlB3enBnaVVxdkFsZjB3dTJYNERZ?=
 =?utf-8?B?eXlSRCtLS0JuVE04dnJlVTNkQ2dhTHFBbVhscTI3emZMbm9BY01TUFdTSXZN?=
 =?utf-8?B?dG1nQ1JOa2IyOWJ0QWZ2N1JZa3RQWnVDdGp3SW05QUdzK1NvanZnKzZpeWRn?=
 =?utf-8?B?ZVRzQ3pZWHI3WG45bCszbDZqWHRiRWphaHRySmJBK244NVJXMXBHdnFWNHhB?=
 =?utf-8?B?UEZFdWh2RDhsWWZ1OW9GSXlrdEMyMFdseUdxRHUxSmx2RG9tWStEclRDSHNL?=
 =?utf-8?B?Y1B5S2JiNER0b1F4RTZRVVhYcHVBNUY2WFB4azV6WHZsRzVmNUk1cGMzNU9z?=
 =?utf-8?B?RWJadk9kclFQUmtLc1Z6ZHM1MHd2MnNkVFhERWpIdHRHbTk0MVZkTFl3L2pI?=
 =?utf-8?B?S3I3L2h5MGhZZHF4aXhJNXpJTksxam1Rd1UyTEVIcDNCbVQ1QlcyV2hTN2w4?=
 =?utf-8?B?VFJONzdYYW0wMDJ6eFRMVXlkVmRsQWtla3NyZE9Oek5CY0hMZWdYRysza0Zi?=
 =?utf-8?B?eTlMSjdiNWo1eFVJWmxnU3FUNFNZTzYyTzM3ajI4ZlYxVndab29mRmg5WHI1?=
 =?utf-8?B?anNyaEoyaGNQbURtbmtick1qZXIvNEhnRzFibkgzMUFsTHlOd01xclB4SzlX?=
 =?utf-8?B?QXNBK1RGVExaVnVHa2tiUCttdzVjTlZYbWZ1OUpaOWx0cjNmWjhrN3BVU2FG?=
 =?utf-8?B?SmR3MDA2MmE5bVV3aEZwb0hVcE5UV0VrM2d2c3hkZ3hGQUlUcGt3Tlh5bkx2?=
 =?utf-8?B?ZWxlazJDajVYM2RqM01icERhN3FteWM3aWh1VXJPSEZsdUp6TVR6aWRVUUl0?=
 =?utf-8?B?TGp0NTlxdTNiL3pFZUdwb0lFQ2wrUlNIcnVXOHZmWS9kVUN5RzRKYTBiaVl1?=
 =?utf-8?B?WGl5N2IyWlhBdzhsRGFvSDVCM2UzT0gzVWxhSjhFQnpITFdnWDkzMW41LzdT?=
 =?utf-8?B?YUJENHFFVW9rY2psYm5YTE5FYksrYnVmTjB3OGVuUFV3MktkQU1LaFAvOE1D?=
 =?utf-8?B?c2Z2TUg0RVBLalJLWndWK2I4ZDJaRzN6TjhRR3ZjdE43RVZVcW9TYzg4cWgx?=
 =?utf-8?B?WTI1cjV2VmtsWHA0bUpuWXJaWWhxVlZKOGdtL0trTVFDZm5QWERscm4ra2lM?=
 =?utf-8?B?YkcrRExOb3ZGNXdRV25nTmhZb1ptcjhoMUhiZnp1eUdqNzRWT1hwSzZjWWlp?=
 =?utf-8?B?eDRjTVoxM3hacGxFNHNuRDJ6ZGZ6K2lLTEtpdkxjcDNDU1JZbGdsTEFDMU5q?=
 =?utf-8?B?QUdjQ3g0Z1FFVGlmS3R0MjE1L2loVVZla3BHL1pVcDUveE9OckRnOVRuMFl6?=
 =?utf-8?B?Y01VM1d4dmdDeXpzSHc2VUhpRDAzL0dhc3VIWHpvL0dueUtHdjVSUjRLd3Er?=
 =?utf-8?B?RHArNndGVHh1aVpNaDJzc2hmUjBiOXlMdFNPK1hRUEFVSGlabGpKbmVza0Vw?=
 =?utf-8?Q?s+mVn26tFScvAv9g9VMJs/I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d682cf5e-a993-4d87-d205-08dc53050f0e
X-MS-Exchange-CrossTenant-AuthSource: BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 11:07:17.3649
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f930300c-c97d-4019-be03-add650a171c4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zeyhRakgWhuEpJ8arHNk5ec9dr5rgniWErOlc3lImRkwWg0LX0fvlqNlVjNmzhCpHheT2K2Mcfvtqd5/qcgE3RhdHu/ccZGehYODtOH4jie8/qJLOUennaqgI1CEJMcI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRYP281MB3225
X-OriginatorOrg: aisec.fraunhofer.de

Hi Alex,

On 3/31/24 00:05, Alejandro Colomar wrote:
> Hi Michael,
> 
> On Fri, Mar 29, 2024 at 01:41:37PM +0100, Michael Weiß wrote:
>> finit_module() supports the MODULE_INIT_COMPRESS_FILE flag since
>> Linux 5.17. See commit b1ae6dc41eaaa ("module: add in-kernel support
>> for decompressing")
>>
>> During implementation of a secure module loader in GyroidOS, we
>> wanted to filter unsafe module parameters. To verify that only the
>> two documented flags which are disabling sanity checks are unsafe,
>> we had a look in the current kernel implementation.
>>
>> We discovered that this new flag MODULE_INIT_COMPRESS_FILE was added.
>> Having a deeper look at the code, we also discovered that a new error
>> code EOPNOTSUPP is possible within newer kernels.
>>
>> The inital commit only supported gzip and xz compression algorithms.
>> Support for zstd was added in Linux 6.2 by commit 169a58ad824d8
>> ("module/decompress: Support zstd in-kernel decompression")
>>
>> Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
>> ---
>>  man2/init_module.2 | 48 +++++++++++++++++++++++++++++++++++++++++++++-
>>  1 file changed, 47 insertions(+), 1 deletion(-)
>>
>> diff --git a/man2/init_module.2 b/man2/init_module.2
>> index 95917a079..8197b0df6 100644
>> --- a/man2/init_module.2
>> +++ b/man2/init_module.2
>> @@ -107,6 +107,10 @@ Ignore symbol version hashes.
>>  .TP
>>  .B MODULE_INIT_IGNORE_VERMAGIC
>>  Ignore kernel version magic.
>> +.TP
>> +.BR MODULE_INIT_COMPRESSED_FILE " (since Linux 5.17)"
>> +.\" commit b1ae6dc41eaaa98bb75671e0f3665bfda248c3e7
>> +Use in-kernel module decompression.
>>  .P
>>  There are some safety checks built into a module to ensure that
>>  it matches the kernel against which it is loaded.
>> @@ -136,6 +140,41 @@ If the kernel is built to permit forced loading (i.e., configured with
>>  then loading continues, otherwise it fails with the error
>>  .B ENOEXEC
>>  as expected for malformed modules.
>> +.P
>> +If the kernel was build with
>> +.BR CONFIG_MODULE_DECOMPRESS ,
>> +the in-kernel decompression feature can be used.
>> +Userspace code can check if the kernel supports decompression by
>> +reading the
>> +.I /sys/module/compression
>> +attribute.
>> +If the kernel supports decompression, the compressed file can directly
> 
> Please use semantic newlines.  See man-pages(7):
> 
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p';
>    Use semantic newlines
>      In  the  source of a manual page, new sentences should be started
>      on new lines, long sentences should be split into lines at clause
>      breaks (commas, semicolons, colons, and so on), and long  clauses
>      should be split at phrase boundaries.  This convention, sometimes
>      known  as  "semantic newlines", makes it easier to see the effect
>      of patches, which often operate at the level of  individual  sen‐
>      tences, clauses, or phrases.
>
Thanks for the hint. I'll fix that.
 
>> +be passed to
>> +.BR finit_module ()
>> +using the
>> +.B MODULE_INIT_COMPRESSED_FILE
>> +flag.
>> +The in-kernel module decompressor supports the following compression
>> +algorithms:
>> +.P
>> +.RS 4
>> +.PD 0
>> +.IP \[bu] 3
>> +.I gzip
>> +(since Linux 5.17)
>> +.IP \[bu]
>> +.I xz
>> +(since Linux 5.17)
>> +.IP \[bu]
>> +.I zstd
>> +.\" commit 169a58ad824d896b9e291a27193342616e651b82
>> +(since Linux 6.2)
>> +.PD
>> +.RE
>> +.P
>> +The kernel only implements a single decompression method which is
>> +selected during module generation accordingly to the compression
>> +method selected in the kernel configuration.
>>  .SH RETURN VALUE
>>  On success, these system calls return 0.
>>  On error, \-1 is returned and
>> @@ -221,12 +260,19 @@ is too large.
>>  .TP
>>  .B EINVAL
>>  .I flags
>> -is invalid.
>> +is invalid or the decompressor sanity checks failed while loading
>> +a compressed module with flag
>> +.BR CONFIG_MODULE_DECOMPRESS
> 
> This should use B, not BR.  (It uses Bold, not Bold/Roman alternating.)
>
I spotted another error here, too. Should be: 

	.B MODULE_INIT_COMPRESSED_FILE

I'll fix that in v2.
 
>> +set.
>>  .TP
>>  .B ENOEXEC
>>  .I fd
>>  does not refer to an open file.
>>  .TP
>> +.BR EOPNOTSUPP " (since Linux 5.17)"
>> +This error is return if the kernel was configured without
> 
> The first words seems redundant.  I'd use:
> 
> 	The kernel was configured without CONFIG_MODULE_DECOMPRESS.
> 
> Which seems incomplete.  I guess if the module is not compressed, then
> it won't report this error.
> 
> 	The module is compressed, and the kernel was built without ...

True. But I would write:

	The flag
	.B MODULE_INIT_COMPRESSED_FILE
	is set to load a compressed module,
	and the kernel was built without
	.BR CONFIG_MODULE_DECOMPRESS .

Since the error directly dependents on a check of the flag.

> 
>> +.BR CONFIG_MODULE_DECOMPRESS
> 
> This was missing a terminating '.'.
> 
>> +.TP
>>  .BR ETXTBSY " (since Linux 4.7)"
>>  .\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
>>  The file referred to by
>> -- 
>> 2.39.2
>>
> 
> Have a lovely night!
> Alex
> 

Regards,
Michael

