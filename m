Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2EC61D4CEB
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2020 13:45:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726047AbgEOLpq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 May 2020 07:45:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726046AbgEOLpp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 May 2020 07:45:45 -0400
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2E51C061A0C
        for <linux-man@vger.kernel.org>; Fri, 15 May 2020 04:45:45 -0700 (PDT)
Received: by mail-io1-xd42.google.com with SMTP id f3so2387793ioj.1
        for <linux-man@vger.kernel.org>; Fri, 15 May 2020 04:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=ftOb9tFMbQ3ZU9lVz8FZ/3LnG1kpNU7EEy5bceFU7QZXMMJzvlQwDbg5tYlqA37bLA
         QKcv+QwtDHqTdL3F0VT4SVSA+v3QUhp0734Xdh33kBodXahda0V6vDCoGsXrIoeH1Ksh
         dWKWAn+hEZZXse/HkU/BYMMn95aljEWLcj87LaeFJSZjYzpXPcm8LbpB44HdJ1t0sZzr
         +vUk5qyJ9KNNxaVpLJqSsI3Mli12NrzX5sMKRIs33RlmRyRzqkbWB/91xFY4PfWNP6RW
         m0/N4i45EzqkZPBqTu6/l7vysHVsCjc6LaLcSyObg+nhAVGaACCqeG/hWfanINEMw1qL
         lfFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=dudGmTD9B0WVDC54HYvOKKqnQZVnoQnp+HdolmmOYcauYlzGRfBZDCwutnPPMp5HaB
         QgNCbRllOr3AmMvEIA24DWhdnloh5dXOcurSEOJWIx0tuhteuTaIJTWKQHqk2K7xIFDC
         vdMDOEMdLYeMAZybzFFVbXU9gaUBghfVTPIiNJuj1/l4vSm0vAk7GdkCKYhk2muSPVXW
         v8HHWTnf1oCtx6OeH3Q4f3OTrEhrNtx1WSTS57jN0lu5jaiFZhkoIFc6ajMA0btnYA2P
         TYpo+Tr2qm6QO7AQs3YkV1E4W5Wb3oAujFocB0YLEhODb1IJFw24afAsjIM3zpn9ujpk
         P7fg==
X-Gm-Message-State: AOAM532hVcY6tdkeZiYx9A0bDf3Nwt7ih9MjoH2oKucLVd/1JUZ6jHTN
        o0tpjzuhQ5A3OA+xJWJtRT3uwxPBgsI419m/It0=
X-Google-Smtp-Source: ABdhPJwYuZCy2y4Y8lrX6z5piZmwUvWAyxTmG4jNgx6qklgccb6/R6Frg0aFXEtrZ+Hy5Bmfg+uTRsBOT7GKzLAvHYc=
X-Received: by 2002:a05:6638:60e:: with SMTP id g14mr2885399jar.54.1589543144534;
 Fri, 15 May 2020 04:45:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a92:7e93:0:0:0:0:0 with HTTP; Fri, 15 May 2020 04:45:43
 -0700 (PDT)
Reply-To: robertandersonhappy1@gmail.com
From:   robert <andersonrobertpass11@gmail.com>
Date:   Fri, 15 May 2020 04:45:43 -0700
Message-ID: <CAOga3cfYt7VW2N_kKgmncUJeBJ_ZKR=MRS31EFgkAgxmUnACpg@mail.gmail.com>
Subject: =?UTF-8?B?0JTQvtGA0L7Qs9C+0Lkg0LTRgNGD0LMsINCc0LXQvdGPINC30L7QstGD0YIg0JHQsNGA?=
        =?UTF-8?B?0YDQvtCx0LXRgNGCINCQ0L3QtNC10YDRgdC+0L0uINCvINCw0LTQstC+0LrQsNGCINC4INGH0LDRgdGC?=
        =?UTF-8?B?0L3Ri9C5INC80LXQvdC10LTQttC10YAg0L/QviDRgNCw0LHQvtGC0LUg0YEg0LrQu9C40LXQvdGC0LA=?=
        =?UTF-8?B?0LzQuCDQv9C+0LrQvtC50L3QvtCz0L4g0LrQu9C40LXQvdGC0LAuINCSIDIwMTUg0LPQvtC00YMg0Lw=?=
        =?UTF-8?B?0L7QuSDQutC70LjQtdC90YIg0L/QviDQuNC80LXQvdC4INCc0LjRgdGC0LXRgCDQmtCw0YDQu9C+0YEs?=
        =?UTF-8?B?INGB0LrQvtC90YfQsNC70YHRjywg0L/RgNC40YfQuNC90LAsINC/0L4g0LrQvtGC0L7RgNC+0Lkg0Y8g?=
        =?UTF-8?B?0YHQstGP0LfQsNC70YHRjyDRgSDQstCw0LzQuCwg0L/QvtGC0L7QvNGDINGH0YLQviDQstGLINC90L4=?=
        =?UTF-8?B?0YHQuNGC0LUg0YLRgyDQttC1INGE0LDQvNC40LvQuNGOINGBINGD0LzQtdGA0YjQuNC8LCDQuCDRjyA=?=
        =?UTF-8?B?0LzQvtCz0YMg0L/RgNC10LTRgdGC0LDQstC40YLRjCDQstCw0YEg0LrQsNC6INCx0LXQvdC10YTQuNGG?=
        =?UTF-8?B?0LjQsNGA0LAg0Lgg0LHQu9C40LbQsNC50YjQuNGFINGA0L7QtNGB0YLQstC10L3QvdC40LrQvtCyINCy?=
        =?UTF-8?B?INC80L7QuCDRgdGA0LXQtNGB0YLQstCwINC/0L7QutC+0LnQvdC+0LPQviDQutC70LjQtdC90YLQsCwg?=
        =?UTF-8?B?0YLQviDQstGLINCx0YPQtNC10YLQtSDRgdGC0L7Rj9GC0Ywg0LrQsNC6INC10LPQviDQsdC70LjQttCw?=
        =?UTF-8?B?0LnRiNC40LUg0YDQvtC00YHRgtCy0LXQvdC90LjQutC4INC4INGC0YDQtdCx0L7QstCw0YLRjCDRgdGA?=
        =?UTF-8?B?0LXQtNGB0YLQstCwLiDQvtGB0YLQsNCy0LjQsiDQtNC10L3RjNCz0Lgg0L3QsNGB0LvQtdC00YHRgtCy?=
        =?UTF-8?B?0L4g0YHQtdC80Lgg0LzQuNC70LvQuNC+0L3QvtCyINC/0Y/RgtC40YHQvtGCINGC0YvRgdGP0Ycg0LQ=?=
        =?UTF-8?B?0L7Qu9C70LDRgNC+0LIg0KHQqNCQINCU0L7Qu9C70LDRgNGLICg3LDUwMCwwMDAsMDAg0LTQvtC70Ls=?=
        =?UTF-8?B?0LDRgNC+0LIg0KHQqNCQKS4g0JzQvtC5INC/0L7QutC+0LnQvdGL0Lkg0LrQu9C40LXQve+/vQ==?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


