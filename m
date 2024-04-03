Return-Path: <linux-man+bounces-717-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CE3896E77
	for <lists+linux-man@lfdr.de>; Wed,  3 Apr 2024 13:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EB9728A376
	for <lists+linux-man@lfdr.de>; Wed,  3 Apr 2024 11:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21B3D143869;
	Wed,  3 Apr 2024 11:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aisec.fraunhofer.de header.i=@aisec.fraunhofer.de header.b="OEghFQ8w";
	dkim=pass (1024-bit key) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b="hMe6CqHp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-edgeMUC218.fraunhofer.de (mail-edgemuc218.fraunhofer.de [192.102.154.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06201419BF
	for <linux-man@vger.kernel.org>; Wed,  3 Apr 2024 11:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.102.154.218
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712144962; cv=fail; b=OX0LYeEYD9VsRddGwhqOKI9bSiNGmBP5oRSxAIIHfzCAfKMhUCZQPfDMwjD/JnJc2d+eY7QsfJ2NYJU3SrEd6t2LziRqV2cgnDGfl/5CdWnE3QnU1FpHcA7GkIMeKUrJ2YrB5UYoK/xMMpEp7GYxKYT1AEiIVxTZk3UAtlyG554=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712144962; c=relaxed/simple;
	bh=cLTg2oXUz3emxR7SlLRPPDO9H6DCRONHGIXH7kiUoA4=;
	h=Message-ID:Date:Subject:To:CC:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=DFafIKqOQa0nzv71Ts2WWx55yzfBTl+frtAFV6UxDrCIqekQhDvCNEOtyITjnvXJwQv0raKaD+5PiAhALWqRztY8RM9UMDl+nuWjj56tuQjv8Hboa9onfawy2yErFkCYEZSQqb16+9uJQzUp2BEvnTiCaaGsQhNy3+/wSPLC7Xk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aisec.fraunhofer.de; spf=pass smtp.mailfrom=aisec.fraunhofer.de; dkim=pass (2048-bit key) header.d=aisec.fraunhofer.de header.i=@aisec.fraunhofer.de header.b=OEghFQ8w; dkim=pass (1024-bit key) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b=hMe6CqHp; arc=fail smtp.client-ip=192.102.154.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aisec.fraunhofer.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aisec.fraunhofer.de
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aisec.fraunhofer.de; i=@aisec.fraunhofer.de;
  q=dns/txt; s=emailbd1; t=1712144956; x=1743680956;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=cLTg2oXUz3emxR7SlLRPPDO9H6DCRONHGIXH7kiUoA4=;
  b=OEghFQ8wCtAY/vcgTjGMZ2Q6r6ks0E7p+6gS7rhtdbIh8ojYnk79Kimr
   Crbax9zITeslcFrpSn2VBMfsH8R56N/3jc1ntO5wgZW5l881xts+rk0ZQ
   z7/jLOZ9x6DlMYyHS8Iim/Spn6T5aE9ZPMGmRfWXMQDcHcor9kHS3LbE/
   RWiLn4suYHvL3hZkr08YncpWP+kZjjrLlTrEJ9KgzwPY4RFiALjm7gzio
   iwUcmZ5Lf3bII1g4C2I/J7TqZA2UiFv8P1/vL/6NUJRHQcp9IIfurSSZJ
   ICXSKI8Rjxf2CwVLrdThVeFInsROnJlG+l31qD6zR0OD+ce5Vnd9HB5kb
   A==;
X-CSE-ConnectionGUID: 87+tKit7Rl6A6cZHSb8aLQ==
X-CSE-MsgGUID: r4UyHUlbQcafFBJi2wHL3Q==
Authentication-Results: mail-edgeMUC218.fraunhofer.de; dkim=pass (signature verified) header.i=@fraunhofer.onmicrosoft.com
X-IPAS-Result: =?us-ascii?q?A2HCAADmQA1m/xmkZsBaHAEBAQEBAQcBARIBAQQEAQFAg?=
 =?us-ascii?q?T4EAQELAYJCfIFfhFaROi0DmCyEL4JRA1YPAQEBAQEBAQEBBwEBOwkEAQEDB?=
 =?us-ascii?q?IR/AogJJzcGDgECAQMBAQEBAwIDAQEBAQEBAQEGAQEGAQEBAQEBBgcCgRmFL?=
 =?us-ascii?q?z4NhAaBJgEBAQEBAQEBAQEBAR0CDShUAQUjDwENAQE3AQ8LDgoCAiYCAjElB?=
 =?us-ascii?q?g4FAgEBgnwBgisDMRSyPYEygQGCCgEBBrAnGIEjgR8DBgkBgRAuAYNphD0Bi?=
 =?us-ascii?q?jSCT4E8CwOBBoE3OD6EWINGgkYih1Z+iU+CKEGBWTCCDE6BJYRSVH0cA11BA?=
 =?us-ascii?q?WcbJgoZKh8xCTwPDBoCGxQNJCMCLD4DCQoQAhYDHRQEMBEJCyYDKgY2AhIMB?=
 =?us-ascii?q?gYGXCAWCQQjAwgEA1ADIHARAwQaBAsHcQWCAIE9BBNHEIEyhTWEZQyBfYE2K?=
 =?us-ascii?q?YFOKYQ4C0NxFgJJbQNEHUACAQttPTUJCxsoAR2dHAGCbwEFNyYRBxMKIgQTO?=
 =?us-ascii?q?UGBDwcKAgopkl+DKpAJnzcHgjaBYIwOlSIGDwQvhAWDb49Ri06HHy6HWJBcg?=
 =?us-ascii?q?lSJKYF3mmcCBAIEBQIPCIF6UoEuMz6DNhM/GQ+OIIN6hRSZUXYCAQEBNgIHA?=
 =?us-ascii?q?QoBAQMJgjmIMQEB?=
IronPort-PHdr: A9a23:7BG/uxPYYxWLKTfRvDwl6nZXDBdPi9zP1nM99M9+2PpHJ7649tH5P
 EWFuKs+xFScR4jf4uJJh63MvqTpSWEMsvPj+HxXfoZFShkFjssbhUonBsuEAlf8N/nkc2oxG
 8ERHEQw5Hy/PENJH9ykIlPIq2C07TkcFw+6MgxwJ+/vHZXVgdjy3Oe3qPixKwUdqiC6ZOFeJ
 Qm7/z7MvMsbipcwD6sq0RLGrz5pV7Z9wmV0KFSP2irt/sri2b9G3mFutug69slGA5W/Wp99Y
 KxTDD0gPG1w38DtuRTZZCek5nYXUTZz8FJCA13F5VLbdJOg4wDD8eta9gmRLNWvFrY6ZjSOt
 o5lVjLJsiFbJTw3zWGHjvB72fE+wlqr8hxaztD/eaGNNNNBfuSAf94TdG1aD/gLSAloKY+bT
 LcWKMA4FL9yj9TSq3xWnzzjIxeoPubp5WVLv0aox4Nq+rUzMAHWwgMmOI4IgjfrhdWtaagPT
 OO20ur66QiectFzgRnTwZjzd0wluKmdZK90Q/Hq7QowJw6Un1qShZzVATq86McE7Vq09+hqU
 eCxtzAFjydh/jOU1touuteKutMJ0m/Vshp26qsFeviWUxsoKc7hEYFXsTmdLZczWM45XmV07
 T4z0aZV0XbaVC0DyZBiyhLQZtm6WNLRslTtTu+MJzd/in9/Pr6y1F6+8kmln/X1TdL8kE1Lo
 SxMjsTWuzgT2gbS5MmKRro1/kqo1TuVkQGGwu9eKF0yla3VJoRnxbg1l5EJtl/EEDOwk0Lz5
 JI=
X-Talos-CUID: =?us-ascii?q?9a23=3ArFSsV2jioS06JwpzIKH+spzZSDJuIiKe0FTRPxC?=
 =?us-ascii?q?CDThAFranaWSaqKpAqp87?=
X-Talos-MUID: =?us-ascii?q?9a23=3ApJc2xw+LFsvLRryj0safmUaQf9003rWONUQHqJ4?=
 =?us-ascii?q?PteeuFy0qJBe51w3iFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,177,1708383600"; 
   d="scan'208";a="1232086"
Received: from mail-mtaf25.fraunhofer.de ([192.102.164.25])
  by mail-edgeMUC218.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2024 13:48:03 +0200
X-CSE-ConnectionGUID: OddsZRonRSewA4DlVWgljQ==
X-CSE-MsgGUID: r3yDjPhCTM+bDu/b+SjoAw==
IronPort-SDR: 660d41f4_ZAnnUBqFaC22/MItjB3lBw0MN/gZwPQbsly/+n3WACDwaom
 FLyfwjgDQaPPKHN/QMKmQ8JVJbe+8sdqi046BPw==
X-IPAS-Result: =?us-ascii?q?A0DMAQDmQA1m/3+zYZlaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?RyBGQQBAQsBgXBSBz43WIEHhFWDTQEBhS2GSQGBdC0DOAGXc4QvglEDVg8BA?=
 =?us-ascii?q?wEBAQEBBwEBOwkEAQGFBgKIBgInNwYOAQIBAQIBAQEBAwIDAQEBAQEBAQEGA?=
 =?us-ascii?q?QEFAQEBAgEBBgWBChOFbQ2GWgEBAQMSEQ8BDQEBFCMBDwsOCgICJgICMQceB?=
 =?us-ascii?q?g4FAgEBHoJeAYIrAzECAQEQpVgBgUACiyKBMoEBggoBAQawJxiBI4EfAwYJA?=
 =?us-ascii?q?YEQLgGDaYQ9AYo0gk+BPAsDgQaBNzg+hFiDRoJGIodWfolPgihBgVkwggxOg?=
 =?us-ascii?q?SWEUlR9HANdQQFnGyYKGSofMQk8DwwaAhsUDSQjAiw+AwkKEAIWAx0UBDARC?=
 =?us-ascii?q?QsmAyoGNgISDAYGBlwgFgkEIwMIBANQAyBwEQMEGgQLB3EFggCBPQQTRxCBM?=
 =?us-ascii?q?oU1hGUMgX2BNimBTimEOAtDcRYCSW0DRB1AAgELbT01CQsbKAEdnRwBgm8BB?=
 =?us-ascii?q?TcmEQcTCiIEEzlBgQ8HCgIKKZJfgyqQCZ83B4I2gWCMDpUiBg8EL4QFg2+PU?=
 =?us-ascii?q?YtOhx8uh1iQXIJUiyCaZwIEAgQFAg8BAQaBeiYrgS4zPoM2EzwDGQ+OIIN6h?=
 =?us-ascii?q?RSZUUMzAgEBATYCBwEKAQEDCYI5iC8BAQ?=
IronPort-PHdr: A9a23:mqcu5RHp7fuj4ig9wnKT951Gf25NhN3EVzX9l7I53usdOq325Y/re
 Vff7K8w0gyBVtDB5vZNm+fa9LrtXWUQ7JrS1RJKfMlCTRYYj8URkQE6RsmDDEzwNvnxaCImW
 s9FUQwt5CSgPExYE9r5fQeXrGe78DgSHRvyL09yIOH0EZTVlMO5y6W5/JiABmcAhG+Te7R3f
 jm/sQiDjdQcg4ZpNvQUxwDSq3RFPsV6l0hvI06emQq52tao8cxG0gF9/sws7dVBVqOoT+Edd
 vl1HD8mOmY66YjQuB/PQBGmylAcX24VwX8qSwLFuRHzHbbbtnqrndM62Q60HcbnVelvXzqd7
 4syYRH2pQY9MWIr8m/qipx0sKkO83fD7xYqw6vZPqqMFOJ+V5zdOo4YSGNwWd0AaXZeJ6qXY
 6wsM/MmF99x9qPd+nQCikOMIlSKGufVzzln3HzP5PMg/bQIQBPn3Bw+ENQp7HLm7+rcNP9PX
 v2oz6rWjgfnUq5L+xKlxqbhYisk/fWVBaNJbM7j8nILVBz1gwSBpo7JLwOr380zkGHF3cV4V
 +iriXAb9SNVhCjzzfw8l4v52MEpm0zcyjQ+/4kfCO3nbWBgNI3sAN5RrSacL4xsXoY4Tnp1v
 Dpv0rQdos3TlEkizZ0mw1vad/WpKdXO7AjqSeCRJjl1njRpdeH3ixWz9B24w/bnHomv0VlMp
 zZYiNSEqH0X1hLS58TGAvtw90usw3COgijd8OhZJ0Azm6fBbZknx787jJ0ItkrfWCTxnS3L
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:9BJnEKEj8TbdepZ+pLqE4MeALOsnbusQ8zAXPiFKJCC9F/by/f
 xG885rtiMc9wxhPU3I9eruBEDiewK/yXcW2+ks1N6ZNWHbUQCTTb2Kg7GN/9V7cxeTygdV79
 YFT5RD
X-Talos-CUID: =?us-ascii?q?9a23=3AJXf2RmnGW8KaP3z/AA2pmxXwfhnXOVrRwGziGUi?=
 =?us-ascii?q?+M11kV5TJZVuux6xgkfM7zg=3D=3D?=
X-Talos-MUID: 9a23:4375Wgj6EJUXD58VuqvTxsMpLpx5z6aWCGsxtNYMl9TDP29LOTC0k2Hi
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,177,1708383600"; 
   d="scan'208";a="233054641"
Received: from 153-97-179-127.vm.c.fraunhofer.de (HELO smtp.exch.fraunhofer.de) ([153.97.179.127])
  by mail-mtaF25.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2024 13:48:04 +0200
Received: from XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) by
 XCH-HYBRID-03.ads.fraunhofer.de (10.225.9.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.32; Wed, 3 Apr 2024 13:48:04 +0200
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.168) by
 XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.32 via Frontend Transport; Wed, 3 Apr 2024 13:48:04 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUbrj3qlnTg8iiGLcwONdjWK5w6p89Z/zT26C9KRKucu7C0YZ9c1aSGWYjT+8ui7tSFT4oNqjaQQ9FiCuiFwF6ZeppBopKRvPj6iukKfLDKrrnreH62HPm0dNotrtvkee/IDsMsRUDCwhIhih2XFZLCKMQO9GDvQfmzmUq7ob12HiFzMTCznVl8pKmmYlL7lZI4eEnWhSEWcx2Y+jD3bD5g9GTmkgo+J8VYtXRAvEog6airiDQdB+RWaXyxTVALNFcSXz4xcQJnPLsFbEp7dKrgUX94sloD3uEncTuU2ozFjQMx9DGam+BJ3YNWqEwv7CoSHQxgi/7TmuKMYLC108A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ha+IBl99CQ/iOFHcyp13nfWhD1AfvEIRn4zjfUh8lTc=;
 b=dAM/SsiUiF1wkosbXn665yDRt/5TIq8tHXWyJYI1ipiyzsYKytPQtUVP0XgSBm2JlysL+TQZxkDGIz7GgWqp73M+mFyf49yXDGds/RbctYbX+k95UBGsbDuTUfIiK8HbnatxiIDItp6lKhEeOGey+om/x/7QRjHYSKKi/2WlxN0uisXp3kLibvAXuMytJH3TqwSTygsDVC2X2xOrp6Wm98Np3DizjwBoJr5HSOygaJU2KWFXJLKRSlmvhydcDS0AOJerVaAbZ9z2P10/KGS+n6gaHTddrA9PmzYYvOwBOVrJoQWVnP9QHr4WmVBJTiguAW8wdZOnAJp+md0fU+xT5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aisec.fraunhofer.de; dmarc=pass action=none
 header.from=aisec.fraunhofer.de; dkim=pass header.d=aisec.fraunhofer.de;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fraunhofer.onmicrosoft.com; s=selector2-fraunhofer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ha+IBl99CQ/iOFHcyp13nfWhD1AfvEIRn4zjfUh8lTc=;
 b=hMe6CqHphAWh/5jeaYos9V2wMACdOKTqOBQA1BH5GdO0ZO5NvlRmnG2kQQ6rF8A9zIhxvgnO4nZ+WAh05guukkv+ZLU5uJM0FFAxSm4lq0yQulZSSL+wXe9ygjDxXVaAVKa6ZGpjbljvT6JLNx4cSxujX6+T9tpWy/WgBEX7MFs=
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:50::14)
 by FR2P281MB2860.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:67::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Wed, 3 Apr
 2024 11:48:03 +0000
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::47c2:f246:3fed:4e38]) by BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::47c2:f246:3fed:4e38%3]) with mapi id 15.20.7409.042; Wed, 3 Apr 2024
 11:48:03 +0000
Message-ID: <27a94e40-72bf-4418-bb48-400278d7318e@aisec.fraunhofer.de>
Date: Wed, 3 Apr 2024 13:48:01 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
CC: <linux-man@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Stephen Boyd <swboyd@chromium.org>
References: <20240403114223.42696-1-michael.weiss@aisec.fraunhofer.de>
From: =?UTF-8?Q?Michael_Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>
In-Reply-To: <20240403114223.42696-1-michael.weiss@aisec.fraunhofer.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0210.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::14) To BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:50::14)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BEZP281MB2791:EE_|FR2P281MB2860:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 71DlgpPhWCzphw6zFOFe+PhQF1Xlx/jVMXru7GLNbxAnqTihpYomnGm/cU2i0Nx9xRZ5Wu/VQWRfyu+2xckIQOVJokmPJWl0j3WDWKFD3FrzUTGJ53k1/mGR0VBHuBUp3EqDIEwZwNCAbTfU1MBddpzO6ezERyZrqgTzykoWlMAEWOb6ROMjN8ZzoirEFnQ+HRCPrQNZPyXaEc7J4Nh9nnYN+FsQDRxi21GhahRLWc2G4MrgYBG2UxXAvsrOweS3YxnULJ3nX/uxmtHzp3qW4XibhbZMTS72Qt7BxYYQq0HyJJxypPBXOHGLU/fpjM0lwbiOgcVfOjGuLd7ZEHw5wFxkpVvPsk/JHfbToyCF5UQnrbBAnJpy7zaD3oDz8MdTbAbKg953R2PMnyJfJ9KRUE0r59BT4dGErXthHUXz2l8RqfPf8KRGO8saTE3Eg9eRuesYsTnNtsx4cNeEIXv93OvTcVYzTQMzbutNwRRNYEZ2UsOzgimFb6H49ZVgmkq9jph6f4PzG+Ph4iP3NbLkAxmWoEKVF1TwEbPgdTKY3yY5Wy7khNG3Ko3S37OetjzGtdcxalAXZqEuwL3qoQ/0R6BLxU9KmfvKompJSiZFUc4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3h1VGJLSkltR1JUQTU2NEloMElqdXA0YVZ1NkJUVTNCc002bzl5WDlaQ2FY?=
 =?utf-8?B?cDQ5V3FnUFQwTHZza0NNWVEvaHArdkk4OUJoNTZJWi85UGlUZW5vOVBKdlN1?=
 =?utf-8?B?YjFwZEVUT3UyWkh5azJKYTFieHZWS0NYdWREU0dFUHdsVjN0ZDEzM3pMTUxR?=
 =?utf-8?B?TFVneDd2NVdwMy9JeVNaR2NkQ2tmQWJBeE44Zy8zekljUWZRL2RxVHlUeENW?=
 =?utf-8?B?dFIzM0pjQjJLRzFKUEpZaVdpZzhQTWVSTDVGNG1DS1BOOXEzNWd2SzN6Z0dk?=
 =?utf-8?B?UnhFUklRRXYvcDBrNjJyNzZFclNjdDE4R29idlVJbzQzeUdzUEFvbTE4UXJx?=
 =?utf-8?B?cVNBcUlEWWRHbHNEM3FIR3VGcDRMUTBqcGlnVmV2K3U1QzdXUW5tOU5tRHZw?=
 =?utf-8?B?UFdRbTc5UlhtTndWWVdTSHNWYjBnUE5MeXo5K1cySDd2VVBBOVJndkUrd2Rl?=
 =?utf-8?B?L2lQQXZRVVdtUW5XM1IrSXFtRmszcnhaeCt6dmFzL0w0a0YyekxQTDJHMi9T?=
 =?utf-8?B?MVNEaE1GWVBsSzR2Wk00WHAxN00ydWlnRXhNTFVUTk9BUzZFT3I0dFlMWks0?=
 =?utf-8?B?ZW5hc2hseDlNOHZQOTFQVitpYU83cVdiMUpKeEhEUERidVNDRHROdi9rVW9I?=
 =?utf-8?B?YWQyeTZaZTJIYjBRWmhuVlZteHlGT1hjT2pKWnMwc3d6cXlxZjJqa2t6dmMr?=
 =?utf-8?B?cDZ5V3dnMWVlVmpvNEhZWUhWc1Uyb3pyaG1pbkdtNE9lQVhyVUVFVS9FRnNn?=
 =?utf-8?B?SElsK0hxNkxzS3ZISnhWWEFrTG5Wa1dYbk9mdXhWV3Ntb2RzT0dEaGFnd05v?=
 =?utf-8?B?Vm5LdnRLYTNJNlUzYlhDNThOWndORyt5eFNIMG9Ubkh2UWIwNkpkTnpwV09L?=
 =?utf-8?B?OTBSRy9lN0dTZVZzSmdXQ2lqdzN3YU1Oci8rL3c2RzRSclg5ei9VRElkZ2Ev?=
 =?utf-8?B?S1k3bjlhVlRxNmwyb2Iyb1VpOW1DSGlKWG5MNytHZUUrU21HaVUrdFpjbUxr?=
 =?utf-8?B?MUZuUlE4MEdDc3NaNEF5b3MvMlZ4OUc5U3VSWGpPeGllMklwd1d4QkhyRzlj?=
 =?utf-8?B?RzF3K0Q1Kzc1RVBnUVhjWXR4WlJ4cnVHbE1WYTFVQ3g3OUdCenc5YUptSFQx?=
 =?utf-8?B?a0x3VU5xWTc0eGlhaHJrMEpTalhRTGNqOTBIYlRQV0dQVzVyWVFucG91dFZw?=
 =?utf-8?B?R0podld6TU54SVk3eDdtaUg2TjcybXUvRGVMYWszckZpTTF6VmVwS3BZVWJy?=
 =?utf-8?B?QVg2NlBQa0VFTTZUanF3TmN1dkM0UkNtWTR0RXUrajdiMXg4T3N2Ny83M1lT?=
 =?utf-8?B?d3lmV0N5UVZSZ0lPTHE3dzVYVGFoMHMzQlVJZ1EwN1JnZ1NQNzZhbjFMaWtz?=
 =?utf-8?B?bzhCR1RWZGVWczBNYVA4Nyt2QzJHdW5GL0tzTjJ6N2E2SlNnVXVRKzVVUEl0?=
 =?utf-8?B?TmhnY0ZoTWIrdG5zejFmcmVVRnZMMjlWQkhzTzJBMHg3MW5PVkpQdVNGRWVt?=
 =?utf-8?B?Y0Via0I2eUFTeEhBSFJIbzhkOWtzbWppMnExUmljNWorTTVVS29DSy9rMnhH?=
 =?utf-8?B?NkIzR2pJcUpmbTI5UVFTRC9ZSkdrbjZ2TC9aT29iVCtyNmRsaUVJcEV2eGJZ?=
 =?utf-8?B?ZXUvRzU2ckQ0TC9LOUFVRDVvS2JtMGQ3aXVjZlI4ZlJ1OXNvZitYSi9tSVFR?=
 =?utf-8?B?N2pwYnN2WnZyY0pzTWpSdi8zWnViZGhnMjB1QktMR2FxS0I3NE9YaGR3aGhF?=
 =?utf-8?B?K1A1WmlxbWpmcW9PeEZOYVRuVkljU1IzZW5laHFuTWlCU3hZUXFuWjdRR2pj?=
 =?utf-8?B?ZGtCYVFSWWlkRmduOHQxOTJLdlAyMXVjMHZ0NmVScmVSaEFBM1hTRStRM0k4?=
 =?utf-8?B?VVg0VlRWR3F1SXdhTXZKaGtmcVFKRW56VHhRazd3aVdZS05wVkV0WVZJR3F4?=
 =?utf-8?B?d3pzSGdkSVRlNXNaZWVuYmlEaUhzRUF2VENrUmlvSHVmbEY2VjBBbGFpTk9s?=
 =?utf-8?B?SzY2NUp4WTZxb0o0dWFQZjV6cU9ZeHdEVmZnL3pjOFI5a3p1NkppOUZJQ3B6?=
 =?utf-8?B?b1A4dDlGbHVJTE5ybG1rUlB0c3JSc2NVeDZSb3laSmEyZjZUZm1sWFJWcVZz?=
 =?utf-8?B?bnc5K3I5N2hYMFFva2N4OTB3bWI0d3RnT2Fubm9iWERPdzNjMEx1RDVoaVQ0?=
 =?utf-8?B?cTU2S0pGcndxeVZJQm5jNGJYdXF2M0JJUWozYnpOaDFDNGJ6Mjk0aElJNndi?=
 =?utf-8?Q?vAvry8oXowtFQJxb4f2ePkRAZ0fxCJmm9RYS5m9U3Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e8259cd-be50-4a52-f6be-08dc53d3eb5a
X-MS-Exchange-CrossTenant-AuthSource: BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 11:48:03.2655
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f930300c-c97d-4019-be03-add650a171c4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TJVEqcb43c2V7EqJYWFY1THuAAMKYT9BMyg8DVff7HRW5guXqdx2GXa/bMd+3iaeDi55BaxyJHoY2O0qMDwF0MZV2WEhTAvt2NuSgO2q/RTSUnEgqoCN/dUfmo0sOLh2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR2P281MB2860
X-OriginatorOrg: aisec.fraunhofer.de

Hi,

sorry, I forgot to add -v2 before sending.

On 4/3/24 13:42, Michael Weiß wrote:
> finit_module() supports the MODULE_INIT_COMPRESS_FILE flag since
> Linux 5.17. See commit b1ae6dc41eaaa ("module: add in-kernel support
> for decompressing")
> 
> During implementation of a secure module loader in GyroidOS, we
> wanted to filter unsafe module parameters. To verify that only the
> two documented flags which are disabling sanity checks are unsafe,
> we had a look in the current kernel implementation.
> 
> We discovered that this new flag MODULE_INIT_COMPRESS_FILE was added.
> Having a deeper look at the code, we also discovered that a new error
> code EOPNOTSUPP is possible within newer kernels.
> 
> The inital commit only supported gzip and xz compression algorithms.
> Support for zstd was added in Linux 6.2 by commit 169a58ad824d8
> ("module/decompress: Support zstd in-kernel decompression")
> 
> Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
> ---
> 
> Changes in v2:
> - Update formatting (Alejandro)
> - Split EINVAL into two entries (Alejandro)
> - Fixed error in EINVAL, s/CONFIG_MODULE_DECOMPRESS/MODULE_INIT_COMPRESSED_FILE/
> - Fixed incomplete description for EOPNOTSUPP (Alejandro)
> - Link to v1: https://lore.kernel.org/r/20240329124137.630521-1-michael.weiss@aisec.fraunhofer.de/
> 
> ---
>  man2/init_module.2 | 50 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/man2/init_module.2 b/man2/init_module.2
> index 95917a079..133d82b53 100644
> --- a/man2/init_module.2
> +++ b/man2/init_module.2
> @@ -107,6 +107,10 @@ Ignore symbol version hashes.
>  .TP
>  .B MODULE_INIT_IGNORE_VERMAGIC
>  Ignore kernel version magic.
> +.TP
> +.BR MODULE_INIT_COMPRESSED_FILE " (since Linux 5.17)"
> +.\" commit b1ae6dc41eaaa98bb75671e0f3665bfda248c3e7
> +Use in-kernel module decompression.
>  .P
>  There are some safety checks built into a module to ensure that
>  it matches the kernel against which it is loaded.
> @@ -136,6 +140,39 @@ If the kernel is built to permit forced loading (i.e., configured with
>  then loading continues, otherwise it fails with the error
>  .B ENOEXEC
>  as expected for malformed modules.
> +.P
> +If the kernel was build with
> +.BR CONFIG_MODULE_DECOMPRESS ,
> +the in-kernel decompression feature can be used.
> +Userspace code can check if the kernel supports decompression by reading the
> +.I /sys/module/compression
> +attribute.
> +If the kernel supports decompression,
> +the compressed file can directly be passed to
> +.BR finit_module ()
> +using the
> +.B MODULE_INIT_COMPRESSED_FILE
> +flag.
> +The in-kernel module decompressor supports the following compression algorithms:
> +.P
> +.RS 4
> +.PD 0
> +.IP \[bu] 3
> +.I gzip
> +(since Linux 5.17)
> +.IP \[bu]
> +.I xz
> +(since Linux 5.17)
> +.IP \[bu]
> +.I zstd
> +.\" commit 169a58ad824d896b9e291a27193342616e651b82
> +(since Linux 6.2)
> +.PD
> +.RE
> +.P
> +The kernel only implements a single decompression method.
> +This is selected during module generation accordingly to the compression method
> +chosen in the kernel configuration.
>  .SH RETURN VALUE
>  On success, these system calls return 0.
>  On error, \-1 is returned and
> @@ -223,10 +260,23 @@ is too large.
>  .I flags
>  is invalid.
>  .TP
> +.B EINVAL
> +The decompressor sanity checks failed,
> +while loading a compressed module with flag
> +.B MODULE_INIT_COMPRESSED_FILE
> +set.
> +.TP
>  .B ENOEXEC
>  .I fd
>  does not refer to an open file.
>  .TP
> +.BR EOPNOTSUPP " (since Linux 5.17)"
> +The flag
> +.B MODULE_INIT_COMPRESSED_FILE
> +is set to load a compressed module,
> +and the kernel was built without
> +.BR CONFIG_MODULE_DECOMPRESS .
> +.TP
>  .BR ETXTBSY " (since Linux 4.7)"
>  .\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
>  The file referred to by

