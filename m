Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C7831E9873
	for <lists+linux-man@lfdr.de>; Sun, 31 May 2020 17:27:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726193AbgEaP1E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 31 May 2020 11:27:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725912AbgEaP1E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 31 May 2020 11:27:04 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1F29C061A0E
        for <linux-man@vger.kernel.org>; Sun, 31 May 2020 08:27:03 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id u17so3884262ybi.0
        for <linux-man@vger.kernel.org>; Sun, 31 May 2020 08:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=gkcJFL/DO0XKhZsM5V3WGFwQ2mgesqFydmQtgjHpbfI=;
        b=epJ65CQk7jt4ZOKIxMZ4rJ9SVpyUEBTK+2MfhgIMeBNT+7eZ7f95OurlgSBBQfTRlQ
         lWAVpPS8/U5m8jcHglVRWt1sJZGVjbwT2J5OVNUPTDE0ukHb2G2TogwdK/EQtWuatPLU
         UsjzI0Pp6FJI8tA6yAbZbeB+EeXjS3eXGbyah+Sxz5S6aDX7O0kxDdOSi5y9IlRMcNjO
         SCn66ttEZipb6ifmHDp2W7CG3+ZLpz3i43GGFzYGCOzHJ+wNqxZB7eEqaUn9BIZqHIz1
         oZQVfUjuKMYRppP0kXX1B0tZE4f4HwCvS0GozbVujGAtn5wD2RFn/BFahsaDGQIWsVjJ
         I2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=gkcJFL/DO0XKhZsM5V3WGFwQ2mgesqFydmQtgjHpbfI=;
        b=ko608+S1D2Yj3h/s+apviWxD5F4LprhwlZWA/dOhsNFAcmwTo1kH7RSBDi4D8zEI93
         ligApstXvNlKCaQvjEo1ju5E2XNN1Lwx+R+P1orMn9AQHYga2vQePKc+yDyQ07KixtQ5
         a/iUlg7NqZH5tfCqmRfPwEsL0l4OHnnF4Nq/WDX8LuVzwUPIlZM1TtgN1ERfAaOKzm2q
         1llodSLKNHd0lmMeXWAbpaIQB3t7NPBJKilr1Q/7HYBBn8e2lrAShGIM/POz0wn44g18
         gyvCceh/EmFkgl2zVhgWWKcDweiiahoPsZWCrUi9uQjE+HxKS1nso1fj3nnyeQHgH1KH
         DICg==
X-Gm-Message-State: AOAM533vrJXQKWue7fNHMPv7waVRGEF/y2keNmR6auIuJjMW/HXCzg6c
        oWE3vkhtIxlas1dpx+L2UXrvcGUBzgH4PORp154LE1awnUdDFg==
X-Google-Smtp-Source: ABdhPJyQtZoaxsJ1aUhO5F+64MlUEpsszbQt3b/kg/QmtnodhNmtcg72Tmaj5FjfgrW6z4l4/2RXQqeoAcXtlelIjXs=
X-Received: by 2002:a05:6902:4b1:: with SMTP id r17mr27082661ybs.238.1590938822027;
 Sun, 31 May 2020 08:27:02 -0700 (PDT)
MIME-Version: 1.0
From:   =?UTF-8?Q?L=C3=A9o_Stefanesco?= <leo.lveb@gmail.com>
Date:   Sun, 31 May 2020 17:26:45 +0200
Message-ID: <CAFy=zAx1bJXs=ShCTfUVAvbWxuAAO5xjU=2J9EVfgwKi=8om1g@mail.gmail.com>
Subject: user_namespaces(7): obsolete comment about system time
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

In the man7.org version of the man page for user_namespaces(7), it reads:

there are many privileged operations that affect resources that are
not associated with any
namespace type, for example, changing the system time (governed by CAP_SYS_=
TIME)

which is not consistent with time_namespaces(7).

Cheers,
L=C3=A9o
