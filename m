Return-Path: <linux-man+bounces-575-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D924D87A49F
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 10:08:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 790441F22BA2
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 09:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B130A1B59B;
	Wed, 13 Mar 2024 09:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="j1yQz9Nb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F011C6AB
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 09:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710320877; cv=none; b=hwpl2iHhegta+WUrZ8ZxC3ojSbJjXPNVMjLRlxKBlPZ7v4Ifbzqm9KNqLjwTCK6v56MELHZHicB027xLQH2BO5TSkJNplQ6aZyYef6uOI+uCMQEhINnyx/JXul5bZNRau2bXCA+/GNGri7mDwv5BBfMvPo1PewRXIKd5KfHLk4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710320877; c=relaxed/simple;
	bh=/MX0EKLyn032sdExdDV2ISUPLcMptWpNvDcwxQ6iPl0=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=crvQru1N9ZH/C3id3RjdzlK2ACYswgDakkVJnudWRvyQi6Cd2CHpgQy55qkA/HgCCG2XWUGi1CZRh+Heo4dpa6WEcZxLm3F5EWDw9Qtx1nhXLaa4/yAHD1ZvZTmS0tPp7hPyenIv5AutDpRoiBO7ciAC2VrdZCvDGPCF70/aiBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=j1yQz9Nb; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-60a61b31993so22655977b3.1
        for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 02:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1710320875; x=1710925675; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TJBkH3o0bPYE2VWAMb2QL6Pqe679G9pt4qYvcEL0kjc=;
        b=j1yQz9Nbv1WMSXwxwZP33h8mWwaEsPj08/h9QNxZKBuZw6SYwk+nL8Fqrxe0UUN5HR
         qqxpQg7AuUTfooJzJ9S/mhdejCYZ3FMhxWRQrBTGaJ473MvS0fK93jcB9inhsW+SENTJ
         p/G4obiqhvx+ymwUTjhZFQegjm/R3KW/e+Tztil8h/g9gqxWnApzpzaiNOLLXJGq8bZE
         uu7/s6Gjr77d/CBJrGa2lIUHmH4XHS9lqBBnqTW1LOUIV4G0GwkF40yqnwUr4iIsS6Fl
         bAJx2A+qSKHyrnHwD2PepRH/Ln1jQpFoT88QnuVdrloZaRNVkoHGYBzMv/3NTUJk1cJ/
         nmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710320875; x=1710925675;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TJBkH3o0bPYE2VWAMb2QL6Pqe679G9pt4qYvcEL0kjc=;
        b=ci2eImhsCWm3JfUQrLoIlGBICy6w9DmhAALkGaOGfv3UxsA5SuAHgZdGGAr39R1Nx+
         NC84iM9ql9YoeCiQ8SPK0NL9iaQI0bUJYYmN/3pvcD9BU6nczac35eK95ilVQoRMnAwr
         s0F1Uv9W667qm6RmbbyeWDD4K6uvGNYwbUX/PR6Cs1XwuNyvWtMIcrUKVdtwMM5GZZqG
         FOihQ0gfiB3U+RgzQMnh744manK14hAMbEdazXoTGm4n89vQsTgV2fXEIzQf8NTUf94J
         uppk62AFLP2Fs/YTzKL2uKxxKK9Vfc1Y0KsHK593kkRuMP7jfmEeeT2uQ7aD9vAKYQcN
         wYlQ==
X-Gm-Message-State: AOJu0Yyuy6x2u3Q+MazKhXG3vSYvHSiOrJg0pz6wN+5f/KxV3RUpnC1s
	3TKcWHJUJTeVYrbA5cFnOeEKPVyrLr5IrSnvpQ77cVRcqvZ29Wo/TECISdk1ZK7z7fDeGFdb69d
	nFw==
X-Google-Smtp-Source: AGHT+IE57wN5UQCsf79rGISEstibok7rI4lWqU/PRcppG8Ek2RosV2no8BKxO2wIDI+SGhNn+dNJe87qPCE=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a0d:cb03:0:b0:60a:3d7e:2b98 with SMTP id
 n3-20020a0dcb03000000b0060a3d7e2b98mr560488ywd.4.1710320874947; Wed, 13 Mar
 2024 02:07:54 -0700 (PDT)
Date: Wed, 13 Mar 2024 10:07:52 +0100
In-Reply-To: <20240312151513.9718-1-mic@digikod.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240312151513.9718-1-mic@digikod.net>
Message-ID: <ZfFs6Hw3endsIbzC@google.com>
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested sandboxes
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 12, 2024 at 04:15:13PM +0100, Micka=C3=ABl Sala=C3=BCn wrote:
> This limit was updated and backported with commit 75c542d6c6cc
> ("landlock: Reduce the maximum number of layers to 16") to all supported
> Linux versions.
>=20
> Cc: Alejandro Colomar <alx@kernel.org>
> Cc: G=C3=BCnther Noack <gnoack@google.com>
> Signed-off-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> ---
>  man2/landlock_restrict_self.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/landlock_restrict_self.2 b/man2/landlock_restrict_self.=
2
> index 43f15c932a83..fb7e48234098 100644
> --- a/man2/landlock_restrict_self.2
> +++ b/man2/landlock_restrict_self.2
> @@ -102,7 +102,7 @@ in its user namespace.
>  .TP
>  .B E2BIG
>  The maximum number of composed rulesets is reached for the calling threa=
d.
> -This limit is currently 64.
> +This limit is currently 16.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> --=20
> 2.44.0
>=20

Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>

