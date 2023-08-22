Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 837FF784549
	for <lists+linux-man@lfdr.de>; Tue, 22 Aug 2023 17:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234758AbjHVPUj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Aug 2023 11:20:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233183AbjHVPUi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Aug 2023 11:20:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 998411B9
        for <linux-man@vger.kernel.org>; Tue, 22 Aug 2023 08:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1692717594;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=EXw67QRKYkc6jmvIcfJgHG6n71XKXSE+inwfjndHSxw=;
        b=jUCMYTQkhx1RS4cqV49omaJbP5uA9GF/pYbZ9AatPKY9j9SYqQ8YL8PY19XFo5u9L6PyJE
        oqfN7Hu5N9PPGlRmSsrL5vBCxUUgXUoC5jQsJjyQhiFG2zClZgG7JPy40SLSSwgdIhkZNW
        PjwL25voX//X6HuwvnidRKg3+gfLmCs=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-421-Xjw2m1I5PNeBl7-lRpgGvg-1; Tue, 22 Aug 2023 11:19:51 -0400
X-MC-Unique: Xjw2m1I5PNeBl7-lRpgGvg-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-99bd6ea0d9eso177340766b.3
        for <linux-man@vger.kernel.org>; Tue, 22 Aug 2023 08:19:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692717590; x=1693322390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EXw67QRKYkc6jmvIcfJgHG6n71XKXSE+inwfjndHSxw=;
        b=Ukbgnb8QcQK7UgZOyUzg+BWcWup3KaQ4OAINb5ALckH/AFE531SC47IYAEtYhhNNqP
         EzZAb9g5jO4BwscOgApsugU8lbGLXBxQxo/PxjtpmjCGv5Rq4i2EW83lvidgvkPvQVH3
         oni1Xk7fglij8N+5NeKki9ldfGcxyRpGR49MSPI74WATFOCmyYdwQ/i762KL1ii4/j2Q
         Ug3kmT+SWzZQojpILhZ2DbFSzkUWynLA0R3B19LI+0RtPtOPf1oqoNH0cnYxhS9yvf4E
         Yh0I5r5BkahXq7ZbccZAP2QaOvCPIknNTzN2+glij9On9uQvy/aGCojSaZ/Zs2PHq6f2
         /wOA==
X-Gm-Message-State: AOJu0YzSjgjviZ6/hzt7xsnzhYWX6216j4kLjbIARM57DQB4Vu0z+q4d
        T9rnJ+7R1XCvLBBDyWiDO4uRNO9FKsd6D/7NWxO2SW7PtJUuNg/NRNp2jtk8MPQMXspWk1bw/c4
        jzxA7mz9aMNN+0rgk/JpZ
X-Received: by 2002:a17:906:7395:b0:9a1:b7ec:c8bd with SMTP id f21-20020a170906739500b009a1b7ecc8bdmr1917562ejl.42.1692717590742;
        Tue, 22 Aug 2023 08:19:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMjknVw11KFg/P5TkqgK/hAznelIXXl6BK5Wi1570Cum28mo5UMKKlhWxMW/hC8uxmIwITCg==
X-Received: by 2002:a17:906:7395:b0:9a1:b7ec:c8bd with SMTP id f21-20020a170906739500b009a1b7ecc8bdmr1917551ejl.42.1692717590415;
        Tue, 22 Aug 2023 08:19:50 -0700 (PDT)
Received: from cremorrah.redhat.com (ip-86-49-234-148.bb.vodafone.cz. [86.49.234.148])
        by smtp.gmail.com with ESMTPSA id lf26-20020a170907175a00b0098733a40bb7sm8329284ejc.155.2023.08.22.08.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Aug 2023 08:19:50 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
Subject: [PATCH] close.2: Suggest shutdown(2) when closing socket from another thread
Date:   Tue, 22 Aug 2023 17:19:49 +0200
Message-ID: <717947ba515ec7b179574ca3a3577cf849199872.1692717581.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is another take on the ancient saga of closing sockets from one
thread while another thread is blocked on recv(2). It all started with
[1,2] and continued by [3]. It was established that this is expected and
long term behavior or Linux and the issue was closed by Michael Kerrisk
by commit c2f15a1349a7271f6c1d81361ec8b256266e1c09.

This is all fine and the patch covered the issue in general terms.
However, it does not mention the specific case of sockets and shutdown,
where the issue can be (at least for the read case) mitigated by proper
shutdown. While one may argue that such information may be implied by
other man pages (perhaps return value of recv(2)) and thus is redundant,
it seems only fair to mention shutdown(2) here as it is only rarely
noted in Linux documentation that properly shutting down both side of
the socket is a good programming practice when dealing with sockets.

As a test program I am attaching the program originally written by Lukas
Czerner. Only with small fixes here and there.

[1] https://lore.kernel.org/linux-man/1314620800-15587-1-git-send-email-lczerner@redhat.com/
[2] https://bugzilla.redhat.com/show_bug.cgi?id=650985
[3] https://bugzilla.kernel.org/show_bug.cgi?id=53781

```c
/**
 * Copyright 2011 (C) Red Hat, Inc., Lukas Czerner <lczerner@redhat.com>
 * Copyright 2023 (C) Red Hat, Inc., Tomas Golembiovsky <tgolembi@redhat.com>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it would be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write the Free Software Foundation,
 * Inc.,  51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

void *close_socket(void *arg) {
        int sockfd = *(int *)arg;

        sleep(3);
        printf("Thread: closing socket %d\n", sockfd);
//      shutdown(sockfd, SHUT_RDWR);
        close(sockfd);
        return NULL;
}

int client(void) {
        int sockfd;
        int len;
        struct sockaddr_un address;
        int ret;
        char *buffer=malloc(BUFSIZE);
        pthread_t thread;

        sockfd = socket(AF_UNIX, SOCK_STREAM, 0);

        address.sun_family = AF_UNIX;
        strcpy(address.sun_path, "server_socket");
        len = sizeof(address);

        ret = connect(sockfd, (struct sockaddr *)&address, len);
        if (ret == -1) {
                perror("connect");
                return 1;
        }
        printf("client connected\n");

        ret = pthread_create(&thread, NULL, close_socket, (void *)&sockfd);
        if (ret != 0) {
                perror("Creating thread failed");
                return 1;
        }

        while (1) {
                ret = recv(sockfd,buffer,BUFSIZE,0);
                if (ret < 0) {
                        perror("recv");
                        return 1;
                }
                printf("Data received: %s\n", buffer);
                sleep(1);
        }

        close(sockfd);
        return 0;
}

int server(void) {
        char *message="This is the message I am sending to you";
        struct sockaddr_un server_addr, client_addr;
        int server_sockfd, client_sockfd;
        socklen_t server_len, client_len;
        int ret;

        unlink("server_socket");
        server_sockfd = socket(AF_UNIX, SOCK_STREAM, 0);

        server_addr.sun_family = AF_UNIX;
        strcpy(server_addr.sun_path, "server_socket");
        server_len = sizeof(server_addr);
        bind(server_sockfd, (struct sockaddr *)&server_addr, server_len);

        listen(server_sockfd, 5);

        client_len = sizeof(client_addr);
        client_sockfd = accept(server_sockfd,
                (struct sockaddr *)&client_addr, &client_len);

        printf("Server: sending data...\n");
        ret = send(client_sockfd ,message,strlen(message),0);
        if (ret < 0) {
                perror("send");
                return 1;
        }

        /* simulate running server by not closing the client_socket socket */
        return 0;
}

int main() {
        pid_t pid;

        pid = fork();
        if (pid < 0) {
                perror("fork failed");
                exit(1);
        }
        if (pid > 0) {
                printf(" - starting server\n");
                server();
                printf(" - exiting server\n");
                wait(NULL);
        } else {
                sleep(1);
                printf(" - starting client\n");
                client();
                printf(" - exiting client\n");
        }
}
```

Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
---
 man2/close.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/close.2 b/man2/close.2
index 68211bc58..08c6a0839 100644
--- a/man2/close.2
+++ b/man2/close.2
@@ -145,6 +145,11 @@ Thus, the blocking system call in the first thread may successfully
 complete after the
 .BR close ()
 in the second thread.
+.PP
+When dealing with sockets,
+blocking forever in another thread may be prevented by using
+.BR shutdown (2)
+to shut down both parts of the connection before closing the socket.
 .\"
 .SS Dealing with error returns from close()
 A careful programmer will check the return value of
-- 
2.41.0

