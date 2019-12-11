Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1404411BC6C
	for <lists+linux-man@lfdr.de>; Wed, 11 Dec 2019 20:02:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727064AbfLKTCl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Dec 2019 14:02:41 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:35493 "EHLO
        mail-lj1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727133AbfLKTCk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Dec 2019 14:02:40 -0500
Received: by mail-lj1-f180.google.com with SMTP id j6so25325326lja.2
        for <linux-man@vger.kernel.org>; Wed, 11 Dec 2019 11:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=CCEAkfIdBjNAHFGBBdLXEu3oyUyPcQFvaBYymRhyMsg=;
        b=qXftcx/KpsJFnm2VMG2tbflT8rEjzcsEAonhQn3cu78Eqqzk1E4gPYyGvFQI2CMTgp
         +ZxezfTDl0NDpzTsznBCYqKjI1EBdnjKSm6G5OpA2lTTQxQngvhz/83mbU046JMEE8Jc
         XSuM2TGuXOfWNhQ7hRNG8GkIizQTeZMPny11xE1CWHcKpgI87Y7tMcYuHUuk/Yim1SgU
         1NfPKlIZARj+OJfeqQwO7wk3eQhgH9qJKwnNxMGExRqVxusu/QUU9MiK+LaGqxpNT0mv
         cuyFcmUiDxKMIn/UqbyZNdkHl1RapUY6HT8/Xmd36Bbqn0+TuAmE/IPyK6HYjo0L9zeA
         i+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CCEAkfIdBjNAHFGBBdLXEu3oyUyPcQFvaBYymRhyMsg=;
        b=bcTa1Am5mAQBhWoq2RG8W1ULI5oYkVzVlU8z1s0YrWl7kxrdwj51RLXJqfFRlkNo+q
         axyUlvNWgkAcEfKGhErbeo6EXKCN+OVJ8HnPOPTd64adh6Xvx18LkbboxfAWUNBCwDtk
         X7dguIcyvfu7TS1ebt85BabOeHPjKfqT4JJkM2fw7b7mbFCVeIT61hRxfVNsgWigkxwS
         n6XOGF6meqvLHQEVa4g42jvawa2Vk5LgS8TNGurqcP6ZJBgHQ+7I3gR2nBIQu1ap045M
         GJRweCcP+0lqH+1WOadn7E5iNEdYihGqEIimf9BWuJOjPtAiT65naITI98sknx0XXOq/
         KLCA==
X-Gm-Message-State: APjAAAXJfFPf6ZMmpE+Pbti13n18W/mgdgVD9GIK8lUfRkaG3kt3LMFt
        ynW9uGROSpYlIVOuIrQLMDxfATO+Ydvua8Blob3sIm/i
X-Google-Smtp-Source: APXvYqysbof31RlRj0Wsd0TvSK8PRu3Z96p5pu40Lqxq9E+2TQXbLHu32OrWzBHGa0zmgV8hmzyLlrQfHFEH/8lYyy8=
X-Received: by 2002:a2e:7816:: with SMTP id t22mr3310261ljc.161.1576090958832;
 Wed, 11 Dec 2019 11:02:38 -0800 (PST)
MIME-Version: 1.0
From:   Robin Kuzmin <kuzmin.robin@gmail.com>
Date:   Wed, 11 Dec 2019 11:02:28 -0800
Message-ID: <CAAztzVHLso69W=NzvnHJmOVnPOJ5s6-8B-Wvq2YZ0y4q72noKQ@mail.gmail.com>
Subject: elf.5.html: `e_strndx` and `e_shstrndx` are the same?
To:     mtk@man7.org, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

http://man7.org/linux/man-pages/man5/elf.5.html

I have a suspicion that the identifiers `e_strndx` and `e_shstrndx`
are the same thing and it probably makes sense to unify them.

---
Join us at C++Now 2020 in May!
Robin Kuzmin, CppNow Speaker Liaison, speakers@cppnow.org. Please
allow 2 - 4 days for my reply.

Robin Kuzmin, kuzmin.robin@gmail.com.
Please share your expert opinion about my recent posts:
* The Build System of My Dream (draft)
* Booleans
