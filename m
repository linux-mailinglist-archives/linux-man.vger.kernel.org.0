Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 668374A2B96
	for <lists+linux-man@lfdr.de>; Sat, 29 Jan 2022 05:25:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352359AbiA2EZS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jan 2022 23:25:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230242AbiA2EZR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jan 2022 23:25:17 -0500
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC772C061714
        for <linux-man@vger.kernel.org>; Fri, 28 Jan 2022 20:25:16 -0800 (PST)
Received: by mail-il1-x135.google.com with SMTP id 15so7122599ilg.8
        for <linux-man@vger.kernel.org>; Fri, 28 Jan 2022 20:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=L3colsMztaW5XG57xqkph6usOHkRgpAkZ38vVUzLouc=;
        b=lYpIy507n+I0w9QKEq4aqWRP6spPRgathJGq39PxdJ17mZWYClMfzVBjIvbZ1dcs2u
         woZ9Ky5FC+MxFs6wyUNAvgJOf3BbBfe/XG7kl+WRN7crhm0EoQkqHsGaqTiSzU8M6Zdy
         3cK5jJumPtyNmCOXfgE8j+VjliVGOy0tvibDLtsGWNYYl9JwBBbfVdOOmEJfIi5H2dkT
         KUItzomAK3JqY+rpe0uzp/byOPAammcJW4oL/k+1r3dzunAWG6THQjRH6+B1o0VqoQ0M
         2HSyIRbQTIIrkRkiJYhGCtdU1NzsdsEzClFk93fyGLQNua4KcBIEBEACuuabKU4y4TOG
         Zp7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=L3colsMztaW5XG57xqkph6usOHkRgpAkZ38vVUzLouc=;
        b=XFsYcAhTUHXeIxp5W1RS7ViKXNe5CqLn+bSp/EfzKBh+g/J/UcKwEIPbWawv+aKfGL
         BOs7+bISjk6qPpat/s8JEl/CUAz/RFTd8Mdr6CMXxaRrbQHrQu6qxESiNAmQH2/aTZ9a
         pZ5K9GGJchRmi6WbAEgIll+M6sXF65JhhrUlMEdpYhR4l7YGQ7d96B8RgwQfXf9K2Seo
         eGiEFVxC3w/NKEqp6uuBdWbZxDToP9TqjcnhxzF9HtPrh4BxojsHjzaDN6qyc6UAuF8p
         c9iVwW9E7WmwERcL6y4EImWZx4Wt8UpaPgK4PH1Jft1Swtnllabr5CSEeJjmRcEcc7JI
         HBLQ==
X-Gm-Message-State: AOAM531XzfodsMOXCpDYbbg3NRnT4FmGJqPDPipWos2FqdFsHOY9Y/c/
        oIwqG70mlAkkolP8yAubT6qM4M16SglhW0FeAR5BkOtJ
X-Google-Smtp-Source: ABdhPJyfEsNpfo/THtCcwOqmWy1yi9r6IQF3kd0aVMIUwEDGCHmDO0cwPAa/ywUrsSqVDK2WmSFSBPOdKORXeOCBbi4=
X-Received: by 2002:a92:d78e:: with SMTP id d14mr7873118iln.222.1643430316395;
 Fri, 28 Jan 2022 20:25:16 -0800 (PST)
MIME-Version: 1.0
From:   Lao Shaw <laoshaw21@gmail.com>
Date:   Fri, 28 Jan 2022 22:25:05 -0600
Message-ID: <CABQ1peNegXXk9Lha0EA=pbgWdgjtKcf+RYj2UkN15qJ6VvqF2Q@mail.gmail.com>
Subject: man string vs man string.h
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Under linux `man string` is ISO C at /usr/include/string.h, `man
string.h` is for Posix manpages.

unlike `man stdio` for ISO C, in particular, `man string` does not
have APIs like `memcpy, memcmp` etc, which is in /usr/include/string.h

What am I missing?

Thanks,
Shaw
