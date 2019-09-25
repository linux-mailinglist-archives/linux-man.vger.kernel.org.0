Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E341BE638
	for <lists+linux-man@lfdr.de>; Wed, 25 Sep 2019 22:15:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732945AbfIYUPm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Sep 2019 16:15:42 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:33068 "EHLO
        mail-io1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731062AbfIYUPm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 16:15:42 -0400
Received: by mail-io1-f44.google.com with SMTP id z19so370081ior.0
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 13:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=CV4w+HPInoMkCCRsgS/RMt7zvvK1H5XvnqXQ7aAwAUA=;
        b=oOwsxGDSZm7t48F26KL0earFwW7I/R8UCl1QMQPLx5ZVlyhv1aboQ7hAepF6Bljmq/
         CoTT+PQVcz9n+qx0jdPok59FaAkWhAyBtSsymV3ycyeOiLyBAEVwmODlWhGIRqkVpR6e
         vsV+SMtO80s+CAaiQ/e0uPSAbbi5eEK5EUZqzCzRL73dzJcAjYcdArm5cf/1fn08NTL/
         ZNjLSQcIl/Behel1BYBMM+0Yf/pCTZ9qeT5a1TXj88eCgrpmSD+s9cXuE3yjVijwbD6k
         hkn0sixRezFCp3njIOTmKR0NU+vnyj0oxzD6sVURAZTOhIcafCmNQqptqCYvHFKQtTSF
         G/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CV4w+HPInoMkCCRsgS/RMt7zvvK1H5XvnqXQ7aAwAUA=;
        b=dUAZ2XkE+vB0rDleZEwNJe1A7oNKbOHsDYuIvEFtdngpuK1Nv66vc/v+yy/x2Ve69q
         cWqss4apbAzjgs8WeVKlmXwRll0WPg/TGRK0cI1ZLvyO6DdBFCCrq4FLST2giYNUSq6F
         k3bu+/1HEFWoNsFzLvE2+2O3ETTILgRXKDfbgYDE6nepAPwouxQ0Uz0wOghw+8AlujVT
         KtKIf6awu3RVQQ3qoN75MtmmQKf/ZDh8U+qdleQaqdKFJ05g1EEuPJ7ZgVrxJbzqC7gI
         ykZqqHh2yhv+1/b7Dw7Ad+76I6ABJJPI9KfhDnEodKXimLTSV3uOGX714ynr+VVGynuL
         k4Xg==
X-Gm-Message-State: APjAAAX4xJf6JqFTNCa9f9lbEpAhTJWGw6160tGELo2WpXuapt+y6MMY
        4si+b7Q1Ue7GDeEEAZkVEq8EXjJSl1/0GAsEqiBJ3g==
X-Google-Smtp-Source: APXvYqx4PmAfTJM8d/sq8UYL+Yh+TovqgmxxuLuzjvjz930DveXBUX0KKBFn3FRRRWigUqtZfecNy9u2rlI4EvQp4hU=
X-Received: by 2002:a5d:9814:: with SMTP id a20mr1385770iol.19.1569442541177;
 Wed, 25 Sep 2019 13:15:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:d1:0:0:0:0 with HTTP; Wed, 25 Sep 2019 13:15:40
 -0700 (PDT)
From:   Dick Guertin <dick.guertin@gmail.com>
Date:   Wed, 25 Sep 2019 13:15:40 -0700
Message-ID: <CAMzzPGLKmjvTMJV=VAbi_Vz79Y3dSsNKDY4toJk4pRnUgg93eA@mail.gmail.com>
Subject: https://www.manpagez.com/man/5/launchd.plist/
To:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I'm reporting a deficiency in 'launchd.plist(5)' for
'StartCalendarInterval'.  The numeric ranges are NOT shown, as they
were for 'crontab(5)'.  I'm referring to HOUR, MINUTE, MONTH, and
DAY-OF-MONTH and DAY-OF-WEEK.  Some of these ranges begin with 0,
and some with 1.  That's why it's important to SHOW THE RANGES in the
documentation.  Dick.Guertin
