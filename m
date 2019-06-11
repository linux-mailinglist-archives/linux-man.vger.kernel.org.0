Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B1A873C7F8
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2019 12:01:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728937AbfFKKA4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jun 2019 06:00:56 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:35790 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727726AbfFKKA4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jun 2019 06:00:56 -0400
Received: by mail-pg1-f193.google.com with SMTP id s27so6685473pgl.2
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2019 03:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=706cyxLsg76C+alHPEkkVzd2Etn2IIxq7Q0/d7TUg1E=;
        b=qq/7V3KVxFz4rjraUjEyDQstjMZ/sJW/qwm2AoGDUJXQgBQYDQXAqgofhED34vz7Qx
         89wfaS04iOHEvbFrurlbj3l5w7u/dlKxXqBso3FsCMaY6iRrwA7+8S6/fBSVmzYjpvD/
         ShPqapLIPWstHMtZZMGJAeBN5iqRe/Yz6Y1sPCV5VzRnD+eWjDig15+d3dW7tnMd+o6i
         vtUTLOMN7ic+3uN+DhBjijPiLsg5UHp5gsRn8BDzHXrj1dZwgXxGEbiD6B/kx8vR7VZ3
         0u+5KPYnTvh3oyhNtY8StuAH7ZSzQbyhHU3qTzwNILCVKazxQ9P9KuPXkGvOfESWvDdY
         s1Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=706cyxLsg76C+alHPEkkVzd2Etn2IIxq7Q0/d7TUg1E=;
        b=MQmK2UylcyZ78G7+pmMI6vrWmSDNSaa6BwxuZiTOFzSYg8xw6Mwg33OTE57/fPjOHl
         vcpPu4AvNueUfkB/w7oV9y9jkZPcW+mR88C83qsefsIkyOgWlzJVD+VHbxonJFZr4R+S
         y3nnz2p/ilOF62TpojgS56Hh0CJuek43ZboBUSE7BWYr7D98xG/ElAoPaFntHIXDH4me
         tez+rg3wO++qF6jqtrpPm4yHrv40ejy+Nyy/81issEGDo24UKcohgvKTO74JxSM/7grA
         m+KUegau/oPMvKPUR9b8lDVeiHUR+3d4GytPSLDIYsfrgqonl1YyhPfZHoo3A6IoAwyE
         q4xw==
X-Gm-Message-State: APjAAAV3NIg+umEHGaZxI3NlRtrMqPkKDndd6Rhj7Ihl7sHPj+IdQEij
        6JFqJF4spgYzUNaTHNttuHeDMVZbdw==
X-Google-Smtp-Source: APXvYqzXKqEUxU7Lm2+civ+XuHRsUYAwIOXwk0146plLBGRscPsF1Ut0gHjZwXk9Fky8eQkzIDBSig==
X-Received: by 2002:a17:90a:2343:: with SMTP id f61mr4794790pje.130.1560247254952;
        Tue, 11 Jun 2019 03:00:54 -0700 (PDT)
Received: from poseidon.Home ([114.78.0.167])
        by smtp.gmail.com with ESMTPSA id k3sm12739055pgo.81.2019.06.11.03.00.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 11 Jun 2019 03:00:54 -0700 (PDT)
Date:   Tue, 11 Jun 2019 20:00:48 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     mtk.manpages@gmail.com
Cc:     amir73il@gmail.com, jack@suse.cz, linux-man@vger.kernel.org
Subject: [PATCH] fanotify.7: Reword FAN_REPORT_FID data structure inclusion
 semantics
Message-ID: <20190611100043.GA5057@poseidon.Home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Improved the readability of a sentence that describes the use of
FAN_REPORT_FID and how this particular flag influences what data
structures a listening application could expect to receive when
describing an event.

Signed-off-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
---

Michael,

This is the patch in response to your previous feedback around the
confusing "Depending... determines" wording. I think that what I've
provided below is clearer. Any objections, please let me know.

 man7/fanotify.7 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index 82f6fa786..c64ff8daf 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -142,12 +142,12 @@ until either a file event occurs or the call is interrupted by a signal
 (see
 .BR signal (7)).
 .PP
-Depending on whether
+The use of the
 .BR FAN_REPORT_FID
-is supplied as one of the flags when calling
+flag in
 .BR fanotify_init (2)
-determines what structure(s) are returned for an event within the read
-buffer.
+will influence what data structures are returned to the event listener for each
+event.
 After a successful
 .BR read (2),
 the read buffer contains one or more of the following structures:
-- 
2.21.0


-- 
Matthew Bobrowski
