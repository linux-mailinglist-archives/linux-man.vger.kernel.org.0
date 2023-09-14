Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78CA279FD62
	for <lists+linux-man@lfdr.de>; Thu, 14 Sep 2023 09:43:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232903AbjINHnt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Sep 2023 03:43:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230120AbjINHnt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Sep 2023 03:43:49 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 445241BF6
        for <linux-man@vger.kernel.org>; Thu, 14 Sep 2023 00:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1694677378;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=7vdLk+RCzz6Ix5y4JbahtejcAGUoBEFM34xLAfHxc0w=;
        b=buQ3DbcAh6Fniqf3KR/LhUhcF14A69utj5CJhxp1uC0Ig3EtV/vEVsqH2KGtGysxN5t0Bi
        Xs39mEZDQNKa0LXeGdqmUlvgRRjRkxagpWc0dp5Fi54WcMxcbOWU+6hnoCcmax3ROvrBlC
        l4n7hdvhAcLfgK2eTFR1PzVAt+YmF5o=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-537-Hdzf521BPGuIaLEM_U-2aA-1; Thu, 14 Sep 2023 03:42:53 -0400
X-MC-Unique: Hdzf521BPGuIaLEM_U-2aA-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-94a35b0d4ceso49693766b.3
        for <linux-man@vger.kernel.org>; Thu, 14 Sep 2023 00:42:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694677372; x=1695282172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7vdLk+RCzz6Ix5y4JbahtejcAGUoBEFM34xLAfHxc0w=;
        b=KydCcmFjJOnbKjUpJf5qGUjgdLfE8cxDMBbRRw19H1UQtD34Ovl5tOnW1Dv2Pj6G7Z
         yPa2bnlgtsGkGh0GWLvpgZ74qUb2Tr5+Q9GF4h8ppvqoKvUPDBAFRf8EU4N8FXouR8c/
         RDQ8cbXiBG7Z5tm0fJnNpbUoAWuz5qVqBOxiQPScB5FNO6QxJjwovOPfJwGqTDzUf4jz
         VBmeuWNorxYpqaN9fIgfybPYuPSFW2aLu7ha7fTtW/5Z6PQCrZyWrK9Orv/9HToWfRpe
         Ijq82Zorw/OX7cA7Tc11LlUzH1RCXGfP8Mr3t7jzBZ6ZDNrmtQolWKmx4IHsQijiwsG1
         zv0w==
X-Gm-Message-State: AOJu0YwCYqyusYMU7fmlH/SkAojFbudhaXwIYrkSxzoF43vup3QmI3g9
        i7n0Uwpk3MeqKIpW+DN1ke+cnU2KTrHp1X7oUMhEuSEcMqwNeWVrDO8JSKfe5j4h4KeporQ/iMk
        eRdfBWufzGb18BsYVZbA0
X-Received: by 2002:a17:906:5350:b0:99d:fd27:b38d with SMTP id j16-20020a170906535000b0099dfd27b38dmr4200527ejo.70.1694677372676;
        Thu, 14 Sep 2023 00:42:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvRaIkAaFmt/h00QoiaYVl1jRVJZ8pVa1lABKbPO2QuYbE+o27gxVb0lnkHafri4N7ynVgfA==
X-Received: by 2002:a17:906:5350:b0:99d:fd27:b38d with SMTP id j16-20020a170906535000b0099dfd27b38dmr4200513ejo.70.1694677372341;
        Thu, 14 Sep 2023 00:42:52 -0700 (PDT)
Received: from cremorrah.redhat.com (ip-86-49-233-234.bb.vodafone.cz. [86.49.233.234])
        by smtp.gmail.com with ESMTPSA id g11-20020a170906198b00b009926928d486sm605941ejd.35.2023.09.14.00.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 00:42:52 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
Subject: [PATCH v2] close.2: Suggest shutdown(2) when closing socket from another thread
Date:   Thu, 14 Sep 2023 09:42:51 +0200
Message-ID: <d076cdedac2bc5fffb819363b9431a40840bbe3a.1694677283.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
 * Copyright Red Hat
 * SPDX-License-Identifier: GPL-2.0-or-later
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

v2: updated test file header

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
2.42.0

