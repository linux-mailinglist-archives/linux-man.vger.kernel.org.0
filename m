Return-Path: <linux-man+bounces-4258-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A38C3AEA9
	for <lists+linux-man@lfdr.de>; Thu, 06 Nov 2025 13:40:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C4EB3B523F
	for <lists+linux-man@lfdr.de>; Thu,  6 Nov 2025 12:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CBB332B9AA;
	Thu,  6 Nov 2025 12:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Zs7v95SV"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E274932B9A9
	for <linux-man@vger.kernel.org>; Thu,  6 Nov 2025 12:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762432734; cv=none; b=uWv5GW480P/VIdLiHSr5MIeWJqLV5tbBk+5tSKWAu4sblfOqmvVvtG7hdimbqHIxmUFUo8fP+kn/+Yd+e41P18lhmztoaTVjn06sKHB6XwIEwwykspAL8l4tWKCRnH/Ph30zW+tYBKrH5yDDfXAmNpBMCQTBxl7vDHHd861VBR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762432734; c=relaxed/simple;
	bh=FbOmONoCgVmWijhGAqz7icLwtvfz5RTN9/hAboFOl2A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QmTo6A32Wm+FGi6GZmVu2kKjSxoFdfVfa8RO/TlMihfEU1ycqExc14V0yvsgV01nHThOkyDJyVqWCbBM+P7Y61LaA8TVxA3Kjjgr6pUIjYj8rIMqHkCnHxidKZRNGTn5CRwzmpShFiDiT4/3q2kQvlqJVLIIwMk7w8Y3NRqjDoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Zs7v95SV; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762432731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FbOmONoCgVmWijhGAqz7icLwtvfz5RTN9/hAboFOl2A=;
	b=Zs7v95SVrANZ0ZNov2p67t9lKtazoZkTeYmNRL3TBCHSUeoj1b/7jWtm5JBV+y/gQ3MErV
	0BjHYFaR4xQG4Nk2WgpjUghK1gg59bLb6/d22yyiym8/2Exyk3Q+2h5S/ycV4cIxH3+ifd
	3yesdmSAzNxZUmbxDIsruLLJ9uWO/Jk=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-615-e3LY6L6WOkeu30jQMlniyg-1; Thu,
 06 Nov 2025 07:38:50 -0500
X-MC-Unique: e3LY6L6WOkeu30jQMlniyg-1
X-Mimecast-MFC-AGG-ID: e3LY6L6WOkeu30jQMlniyg_1762432729
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D048E180057A;
	Thu,  6 Nov 2025 12:38:48 +0000 (UTC)
Received: from fweimer-oldenburg.csb.redhat.com (unknown [10.45.224.98])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 355C53001E83;
	Thu,  6 Nov 2025 12:38:46 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?B?0JTQuNC70Y/QvSDQn9Cw0LvQsNGD0LfQvtCy?=
 <dilyan.palauzov@aegee.org>,  linux-man@vger.kernel.org
Subject: Re: tcgetattr() can set errno to 22 / EINVAL
In-Reply-To: <dsb6oiv7q7ra3gbu4bovy3gah522lgsf3d6h3wxwe4ieuka6fh@g6u5qzlyoxf5>
	(Alejandro Colomar's message of "Mon, 3 Nov 2025 14:20:57 +0100")
References: <ebb992217f4a2ceca9a6d9868f50da73c68e8cdb.camel@aegee.org>
	<dsb6oiv7q7ra3gbu4bovy3gah522lgsf3d6h3wxwe4ieuka6fh@g6u5qzlyoxf5>
Date: Thu, 06 Nov 2025 13:38:44 +0100
Message-ID: <lhums4zgwtn.fsf@oldenburg.str.redhat.com>
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

* Alejandro Colomar:

> On Mon, Nov 03, 2025 at 02:45:06PM +0200, =D0=94=D0=B8=D0=BB=D1=8F=D0=BD =
=D0=9F=D0=B0=D0=BB=D0=B0=D1=83=D0=B7=D0=BE=D0=B2 wrote:
>> Hello,
>>=20
>> please amend the errors at https://man7.org/linux/man-pages/man3/tcgetat=
tr.3p.html that the function tcgetattr() can set errno to EINVAL 22 Invalid=
 argument for /dev/hidraw files.
>
> You should file a bug to the Austin Group, which is the group
> responsible for the POSIX standard.

According to Andreas Schwab, it's a bug in the device driver.

Thanks,
Florian


