Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 490183DFE26
	for <lists+linux-man@lfdr.de>; Wed,  4 Aug 2021 11:40:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237105AbhHDJkL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Aug 2021 05:40:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237035AbhHDJkL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Aug 2021 05:40:11 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21424C0613D5
        for <linux-man@vger.kernel.org>; Wed,  4 Aug 2021 02:39:59 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id x90so2684701ede.8
        for <linux-man@vger.kernel.org>; Wed, 04 Aug 2021 02:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:user-agent:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1ko20TG/AnZ0HCPt2+UKwWgp2L0mx7hTcw5XKJQCcdM=;
        b=ECzgiYvjo6Ej+yexhJeeorft+4CVe6xpGMn6pCJQCR5GPudYaU57HGx+/CrxRmRXz+
         jhuIGU6RpJsKslDDuasUBb8v4Ew8aERI+rzAJ3PmDlRlk6VplqNTONRkedqi87tKomxp
         mt2POlgb1t8m+VjJDWfWPcGIBGdPOCP4qrPE0wTHpR4/YIWOrkeOW7Ac2G2TFY4G3zhH
         1XA8Rp4rlsT73km0lk+d4vynUJnySZ2NE6eEExY5YmNPVz8NQqQLtx482wBA3bhZ2j3E
         wjDh6mqWuG3XRSNpZ6Bf+UbeJK8f7qia6u+35OBKB6vVe/GKMVRq59/qubLl1q7qSXtC
         wl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:user-agent:date:message-id
         :mime-version:content-transfer-encoding;
        bh=1ko20TG/AnZ0HCPt2+UKwWgp2L0mx7hTcw5XKJQCcdM=;
        b=rn+hieiy+XqXfG6D/Ocxf+pjAmDinehh7Vh6n4+mgsD4Qx0ozz7M14Kn4kkQ0UEikT
         PTX3tk+Ezem+wZko+zoW5wLZnEluApG1OuI4voqiFwaZ5sn1IRDrjI6kPeE0pfkLw/3W
         e+rjR8QTt9RQhXbNlYKGO6YSgv1vaLtxV2NrziPGHFkpu71OJuXVOBNrDO8DJ26ouQGM
         k4h6HNYjhSIslOmjV0kcPqlCVoFo77KasFpy2saHbqD+ZYEul4iH6mYrD3A596lD6qz7
         ls5Dz23wHOMQu20RQzybyHVgA6ti+CXUAjqXkVjjmYyD60Oqe1UY8e8q7MXNNhksaex5
         aHTw==
X-Gm-Message-State: AOAM532RoeuwOhoeoZbQNZzA1IB2ttJfhGm9IParD09yA+p0Qc7I7VnN
        KOqxkhAH9mXeNhfG/yCWVIo=
X-Google-Smtp-Source: ABdhPJy0OrSPmY332Sc9gaWLpeFx4ZhjIzwfUJ0V7rhtaL8Wo1W0UGVc2kU61fnCIa9LJlxykjA0uw==
X-Received: by 2002:aa7:dd84:: with SMTP id g4mr30805581edv.134.1628069997768;
        Wed, 04 Aug 2021 02:39:57 -0700 (PDT)
Received: from localhost (dynamic-109-81-211-243.ipv4.broadband.iol.cz. [109.81.211.243])
        by smtp.gmail.com with ESMTPSA id c13sm699827edv.93.2021.08.04.02.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 02:39:57 -0700 (PDT)
From:   =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Error in getopts(1p)
User-Agent: Notmuch/0.32.2 (https://notmuchmail.org) Emacs/28.0.50
 (x86_64-pc-linux-gnu)
Date:   Wed, 04 Aug 2021 11:40:01 +0200
Message-ID: <20210804114001+0200.622908-stepnem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


  Hello,

there is an error at the end of the example:

  printf "Remaining arguments are: %s\n$*"

should be

  printf "Remaining arguments are: %s\n" "$*"

(cf.
https://pubs.opengroup.org/onlinepubs/9699919799/utilities/getopts.html )

I would have sent a patch, but couldn't find the POSIX man page sources.
Are they available somewhere?

  Thanks,

  =C5=A0t=C4=9Bp=C3=A1n
