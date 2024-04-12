Return-Path: <linux-man+bounces-736-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 113808A3499
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 19:21:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42C7F1C22EB0
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 17:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B42B914C582;
	Fri, 12 Apr 2024 17:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bD9unPL6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A2D1E53A
	for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 17:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712942478; cv=none; b=jl6RLWcewhhFOUNMxOBQCA4dVJlkREhHWtpGehRl3CgyK+FN+rGFqdjfVJ2L376Uko+COo6VpD8mlRQvpkU/S0K2qwbtNc4LuE0KKdf9TyybTx6cnTsi7tFp9Htts752AaSLC56qWO2nk2CmzAhRa7O5baF+Km1FwqlmFp/NT/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712942478; c=relaxed/simple;
	bh=b76MK5QGzZc/qydogywMbiYx/ivxksNYMDhoUxz4ycQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=BBz/S/t4AQgg5UeSqc/TEOsrJkY2X8uDG9fchUIK/W2yXz46QsRcOYCds2Zbmqk1hjZHQANXa2/pRCQdYnqZnZjE6ylenQs5TGEjkEjp3TfTHQ0Q3AJAc0I6PxAOmF/QwVmK90XTBuBpOvBTPD53ql53YrDu9nHBGmJnG2ZCKrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bD9unPL6; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56e69888a36so1459370a12.3
        for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 10:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712942475; x=1713547275; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=b76MK5QGzZc/qydogywMbiYx/ivxksNYMDhoUxz4ycQ=;
        b=bD9unPL6PVJLVOJPm2tHmikuPj7EVJzwRpRlMqYw1YpwYxFjKk2FpValuSKsugivnj
         ppZXWs579NRpzR4OXOpfxwWUZ1S8S0/OswC4L9j4Q9vx8qQ03UwoBbLHqDFbl8vK3hkY
         Pznc4QjT4RR5au9VkwW4ji5NQP1UUFzPR4/9lMfu5aEeLMyZYxzbQgLnig+lrvuO37wb
         DD3rPG9KdlZbErWZHBeWGRZyqwzGoMYVZKi7eYuY/TR638llY55r4FyeyBxB8NZGAt8N
         HqMRi2GYpdU3VWQiBA/PLTnZJuK2nBVmOCCmWilOmxpHo7Im9YU25medMQBFD/K0sD1k
         ytJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712942475; x=1713547275;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b76MK5QGzZc/qydogywMbiYx/ivxksNYMDhoUxz4ycQ=;
        b=r5SP+u3bBKll6xCCL8ZoOeTStMHPmt7tiReeR/vRJ3G2iPxul7TIQG7FbI/v0sZz9a
         ByxJv9MC85W7V1Uu7TzrLekLAbdNldJ2jg4LU4/qNWUX010Vje06VLBMoQvjiaU5ARE9
         EqUkJxdPqRZT5Z5o7cpHr5KkceMsvg/+atd0YVfzJ32tdMBC74gn8UhwQFQMyeKPGeVL
         /WGuHie3AhCWg8MOCbnoU3yFKSsNMH500BhYBm2+Nlt6OoaoK00g4HqcCsbspSdPC2u2
         96VUA/2yz0ZZzweIlbtKntYghGmPdOalh9J+CXNJ4L0Ueo1Bc+erD3iGxUt09a6nl+GF
         pv9A==
X-Gm-Message-State: AOJu0YzdP3keICeLRAfsJoCfqpiKAk6AjMpDLXtQDn5YvTPvqMdEUBxA
	KDCUEj6XpemvpQCUkxeicTxjA5VM/LanhCglAD0WlCSPlHqbp+RG
X-Google-Smtp-Source: AGHT+IGp/W5bGlkfJEIDVN52KAWQFzxv94zHFC/kCodD6gCqnSdbHmCTM1/zXF3WejrNKQXCiWotWg==
X-Received: by 2002:a50:99d8:0:b0:56e:2f2c:e249 with SMTP id n24-20020a5099d8000000b0056e2f2ce249mr2310798edb.7.1712942474619;
        Fri, 12 Apr 2024 10:21:14 -0700 (PDT)
Received: from eldamar.lan (c-82-192-242-114.customer.ggaweb.ch. [82.192.242.114])
        by smtp.gmail.com with ESMTPSA id et4-20020a056402378400b0056e67f9f4c3sm1846764edb.72.2024.04.12.10.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 10:21:12 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Received: by eldamar.lan (Postfix, from userid 1000)
	id 91686BE2EE8; Fri, 12 Apr 2024 19:21:11 +0200 (CEST)
Date: Fri, 12 Apr 2024 19:21:11 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: proc.5: Still refers to "described in more detail below" for
 splitted out manpages
Message-ID: <Zhlth9wCHbxoNkMi@eldamar.lan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alejandro

Back in August 2023, various parts were split out of proc(5) into
separate manpage. What seems to have remained from the split is the
mentioning:

[...]
178 .P
179 All of the above are described in more detail below.
[...]

I'm not sure what you would like to prefer, so I have no explict patch
here. But maybe this can be reworded to "All of the above are desribed
in sepate manpages prefixes with proc_"?

Regards,
Salvatore

