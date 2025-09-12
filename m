Return-Path: <linux-man+bounces-3858-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEE0B54CD6
	for <lists+linux-man@lfdr.de>; Fri, 12 Sep 2025 14:13:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC5AFAA6DB1
	for <lists+linux-man@lfdr.de>; Fri, 12 Sep 2025 12:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D924B30AD16;
	Fri, 12 Sep 2025 12:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bigonbalance.com header.i=@bigonbalance.com header.b="jVwokHqZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6BB30594E
	for <linux-man@vger.kernel.org>; Fri, 12 Sep 2025 12:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678438; cv=none; b=PYOGae4NfiCp+J6ZlKWtbxy776HcPAzTGs5+EdcxFMAHrKynKhnZjPD6c0yfNFv1eb7RgeTXH+PZ23KcbYvJXje+Bxddi3QWeri+/DyZs+Os5s7xGclaYzMsFrFZnIywTQAu5O8nOpRqbQUT/pUORUjTWVhnLiPei9kVvBdlB40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678438; c=relaxed/simple;
	bh=B5no2rt07/eqVvAlUvAOilJwnzhP5LWUHbLrHQYNM8M=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=m+aUDH20YyQtMzLyAb5RyuziPKXAhJwNzHAtAg+mI+TwGBffV/nhch0LDtjc+INVZExaW+uWsW7++wQopZHPfhMF5dda7GP/M19dzCLepNQt9g1eHYBbaBYI049MhZd2hVTc+wkgLmw+5GE+wVtxIr8KkDLJRwmi1S0a/vt22so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bigonbalance.com; spf=pass smtp.mailfrom=bigonbalance.com; dkim=pass (2048-bit key) header.d=bigonbalance.com header.i=@bigonbalance.com header.b=jVwokHqZ; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bigonbalance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bigonbalance.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so280473266b.3
        for <linux-man@vger.kernel.org>; Fri, 12 Sep 2025 05:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bigonbalance.com; s=google; t=1757678435; x=1758283235; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B5no2rt07/eqVvAlUvAOilJwnzhP5LWUHbLrHQYNM8M=;
        b=jVwokHqZ6Hv8NFxxbjLPCTninjvV0E9Zo+emAYs9pg0kEQ7X2idy6yeUItQ/EfgiVF
         7/g0fg7ubMbiCRahdheb3291K7FEIjHIeq5A78iTdzN2acXgTaso3FBndsPGgFxFmkF/
         aPDPOX96kK5HkgVBCz88jVAZmiBSoxX2dcOMQRr6bhyDtkdu13FLz/DBRJOKt653BhGg
         sSLHdkGsfAlpPpK0dt0pA2XAdDEpzpo21A3hbJHpoNqnd3oLRfS+VMk/fHLqi+YcG0Yk
         i5B1lmBHnJXTw8jVsnRlnhNHlYW6i2XRyl8537guyRFmQVvmOYFICrosR33hoUNOdwHy
         u1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678435; x=1758283235;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B5no2rt07/eqVvAlUvAOilJwnzhP5LWUHbLrHQYNM8M=;
        b=gh8hzoAOghgUMi3XcN3J+xAQOtQ5/xfL2jLoMhRJXF6EEYqnUtgBCmfSQ4XM86+/+i
         pqYbm+YgAu+Kf3IwpwyX5NKoIEi5pWe9UecyRmJroHcS/29oChoNm/Sj4d3MKRQX6aYV
         nqSfR+oIMGvVrRyBGZ2487A9Ol4+z+DxlXkPSyg/QGQpCRIZZiKNmCW2IWuToY/7pGXd
         QgtWihy/kFfVyDHpkJRObRCWlpr+JC0Ry6p32bxtfylWBsIfVpxmaNCyjSNFYfxnFqiL
         ioFMV+zTOJ48iY3JCKqaD8uopFkFFbqabresHSvefqYeBKslQ2wRDhUoijm5/tgVJ/Cx
         ePwg==
X-Gm-Message-State: AOJu0YzrPUU9UVVKOD5jpelQ/ORK3d/f6x0WBlhDHA8Av3/kx7CQNlv6
	yP6Rlqltt/ZfMeZnn6SbPzXWFztrys7rGmAMIDC1DoK6sXkArRsE+8q1JnDDm4nN1LEL9lr2WOO
	YHIl2kK/rAsYubfTiNTlsXVfg+H9JJMQHu+BqBgtNDfSV1cyA50mZ
X-Gm-Gg: ASbGncv8jwiam6m2b+n/GVvdfNQGAyvhkXQkPhCfLFAcs8fhOWTMF65UgkxNFNzmI/C
	2rTfxy2pxHl6V7wcsPHw8bU0BeNSzSDmVlaEe2Vo9HYCT2OVkGgYkXlR3jdVmuAj51dg0JZ0Fj1
	y0orJlqzT+1zbJuUgvDmFjW3Ky7Dco4V12nhcBonNv5jQXSEPdQpJFOokYiLgbUZX7OXBuqiYzw
	E5Z4ug=
X-Google-Smtp-Source: AGHT+IHnA/buJqSDgyPAg+8fJg281uhnRb8JFJiCF9qg7YAZZ/CLVDc9MsKgvA42i93oMdP0fzAlZl8MhR5mmsqX5Ow=
X-Received: by 2002:a17:907:3d92:b0:b04:3402:393b with SMTP id
 a640c23a62f3a-b07c37fbd37mr266028666b.40.1757678431267; Fri, 12 Sep 2025
 05:00:31 -0700 (PDT)
Received: from 23306461726 named unknown by gmailapi.google.com with HTTPREST;
 Fri, 12 Sep 2025 08:00:30 -0400
Received: from 23306461726 named unknown by gmailapi.google.com with HTTPREST;
 Fri, 12 Sep 2025 08:00:30 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Ian Garza <igarza@bigonbalance.com>
Date: Fri, 12 Sep 2025 08:00:30 -0400
X-Gm-Features: AS18NWDYy14Kp-XP1sivqicWOnAhzHS9MVOhhdcOMmrybhfdL7nhiSRGkIN1lr0
Message-ID: <CAADkYMyNyn2CvwwcwK9+UXLuXscJoTJR1ht0sX3g8b9D-uYUHA@mail.gmail.com>
Subject: Interested in a guest post?
To: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there,

Traveling with family is an adventure, but keeping everyone healthy
and energized along the way? That=E2=80=99s the real challenge! From smart
packing and nutritious snacks to staying active and well-rested, a
little planning goes a long way in making every trip fun and
stress-free.

I=E2=80=99m currently working on an article to help families stay on top of
their health and wellness while traveling. Would you be open to
featuring it on your site? Let=E2=80=99s help your readers enjoy their
journeys to the fullest.

Can=E2=80=99t wait to hear back from you, and thanks so much for considerin=
g this!

Ian Garza
Bigonbalance.com


=E2=80=95If you=E2=80=99re interested in featuring an article but have a di=
fferent
topic preference, that=E2=80=99s no problem! Please send your idea over, an=
d
we can move forward from there.

